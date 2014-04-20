//===- CfiPass.cpp - inserts CFI checks based on control flow graph ----===//
//
// This file inserts IDs and checks for a CFI implementation based on the
// control flow graphs and the call graph of a module.
//
// TODO: Insert Comments
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "cfi-multi-wl"

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"
#include "dsa/CallTargets.h"
#include "dsa/DSGraph.h"
#include "dsa/DSCallGraph.h"
#include "CFILowering.h"

#include "llvm/Analysis/AliasAnalysis.h"

using namespace llvm;

namespace cfi {


    /**
     * @brief CfiPass - module pass on the llvm IR that inserts cfi
     * related information as llvm intrinsic functions
     */
    struct CfiPass : public ModulePass {
        static char ID;
        CfiPass() : ModulePass(ID) {}
        cfi::CFILogger *cfiLogger;


        virtual void getAnalysisUsage(AnalysisUsage &AU) const {
            AU.addRequired<EquivBUDataStructures>();
            AU.addRequired<AliasAnalysis>();
            AU.addRequired<CTF>();
        }

        InstDestMap findIndBrTargets(Module& M)
        {
            InstDestMap instDestMap;

            Module::iterator MB, ME;
            for (MB = M.begin(), ME = M.end(); MB != ME; MB++)
            {
                Function *F = &*MB;
                //for all basic blocks in function
                Function::iterator FB, FE;
                for (FB = F->begin(), FE = F->end(); FB != FE; FB++)
                {
                    BasicBlock *B = &*FB;

                    //check if basic block ends with indirect branch 
                    //(TODO add other checks: exceptions, longjumps, trampolines?)
                    if (TerminatorInst *TI = B->getTerminator())
                    {
                        if (IndirectBrInst *IBI = dyn_cast<IndirectBrInst>(TI))
                        {
                            //add all possible successors to indBrDestMap
                            int n = IBI->getNumSuccessors();
                            for (int j = 0; j < n; j++)
                            {
                                BasicBlock *destBlock = IBI->getSuccessor(j);
                                BasicBlock::iterator destBlockStart = destBlock->begin();
                                Instruction *destInstr = &*destBlockStart;
                                instDestMap[IBI].insert(destInstr);
                            }
                        }
                    }
                }
            }

            return instDestMap;
        }

        /**
         * @brief Find all indirect call targets and add them to instDestMap,
         * and find all return targets and add them to retTargets
         *
         * @return void
         */
        void findIndCallAndRetTargets(InstDestMap& instDestMap)
        {
            //do dsa call target analysis
            CTF *ctf = &getAnalysis<CTF>();

            //for all call sites
            CallSiteIterator CB, CE;
            for (CB = ctf->cs_begin(), CE = ctf->cs_end(); CB != CE; CB++)
            {
                CallSite cs = *CB;
                Instruction *I = cs.getInstruction();

                //only consider calls that have targets
                if (ctf->begin(cs) != ctf->end(cs))
                {
                    //for all call site targets
                    CallTargetIterator FB, FE;
                    for (FB = ctf->begin(cs), FE = ctf->end(cs); FB != FE; FB++)
                    {
                        const Function *F = *FB;

                        if (F->isIntrinsic() || F->isDeclaration() )
                        {
                            //errs() << "Skipping intrinsic || declaration: " << F->getName()  << "\n";
                            continue;
                        }

                        //add indirect call targets to indCallDestMap
                        if (!cs.getCalledFunction())
                        {
                            BasicBlock *destBlock = const_cast<BasicBlock *>
                                (&F->getEntryBlock());
                            BasicBlock::iterator destBlockStart = destBlock->begin();
                            Instruction *destInstr = &*destBlockStart;
                            instDestMap[I].insert(destInstr);
                        }

                        
                    
                        //Find all returns in this function
                        Function::iterator BB, BE;
                        Function* ncF = const_cast<Function*>(F);
                        for (BB = ncF->begin(), BE = ncF->end(); BB != BE; BB++)
                        {
                            BasicBlock *B = &*BB;

                            //check if basic block ends with return
                            if (TerminatorInst *TI = B->getTerminator())
                            {
                                if (ReturnInst *RI = dyn_cast<ReturnInst>(TI))
                                {
                                    instDestMap[RI].insert(I);
                                }
                            }
                        }

                    }
                }
            }
        }

        InstIDMap generateSetIDs(InstDestMap& tarmap)
        {
            InstIDMap idmap;
            std::list<InstSet> setList;

            //merge target destination sets
            InstDestMap::iterator MB, ME;
            /* for each transfer instruction */
            for (MB = tarmap.begin(), ME = tarmap.end(); MB != ME; MB++)
            {
                /* get the destination set */
                InstSet mset = MB->second;

                //add first set to setList
                if (setList.size() == 0)
                {
                    setList.push_back(mset);
                    continue;
                }

                /* merge overlapping destination sets */
                InstSet intersect;

                std::list<InstSet>::iterator LB, LE;
                /* for each existing set */
                for (LB = setList.begin(), LE = setList.end(); LB != LE; LB++)
                {
                    InstSet lset = *LB;

                    /* detect set intersection */
                    set_intersection(mset.begin(), mset.end(),
                            lset.begin(), lset.end(),
                            std::inserter(intersect,
                                intersect.begin()));
                    /* if this set overlaps with an existing set */
                    if (intersect.size() > 0)
                    {
                        /* merge the two sets */
                        //STAT_MERGE++;
                        lset.insert(mset.begin(), mset.end());
                        break;
                    }
                }

                //if no intersections found, add this as its own set
                if (intersect.size() == 0)
                {
                    setList.push_back(mset);
                }
            }

            //generate ID for each set in setList, then add each block
            //and their ID to idmap
            std::list<InstSet>::iterator LB, LE;
            /* for each merged set */
            for (LB = setList.begin(), LE = setList.end(); LB != LE; LB++)
            {
                InstSet lset = *LB;
                int ID = rand() % MAX;

                InstSet::iterator SB, SE;
                for (SB = lset.begin(), SE = lset.end(); SB != SE; SB++)
                {
                    Instruction* K = *SB;
                    idmap[K] = ID;
                }
            }

            return idmap;
        }

        /*
         * Give each destination instruction a unique ID
         */
        InstIDMap genUniqueTargetIDs(InstDestMap& tarmap)
        {
            InstIDMap idmap;

            InstSet visitedSet;
            InstDestMap::iterator MB, ME;
            /* create a set of target instructions */
            for (MB = tarmap.begin(), ME = tarmap.end(); MB != ME; MB++)
            {
                InstSet mset = MB->second;
                InstSet::iterator LB, LE;
                /* for each target of this callsite, add to set */
                for (LB = mset.begin(), LE = mset.end(); LB != LE; LB++)
                {
                    Instruction *inst = *LB;
                    visitedSet.insert(inst);
                }
            }
            //generate ID for each set in setList, then add each Instr
            //and their ID to idmap
            InstSet::iterator LB, LE;
            for (LB = visitedSet.begin(), LE = visitedSet.end(); LB != LE; LB++)
            {
                int ID = rand() % MAX;
                Instruction* K = *LB;
                idmap[K] = ID;
            }
            return idmap;
        }

        InstIDSetMap generateCheckIDs(InstDestMap& tarmap,InstIDMap& idmap)
        {
            InstIDSetMap checkmap;
            InstDestMap::iterator MB, ME;
            /* for each callsite */
            for (MB = tarmap.begin(), ME = tarmap.end(); MB != ME; MB++)
            {
                errs() << "new callsite\n";
                InstSet::iterator SB, SE;
                /* get each target */
                for (SB = MB->second.begin(), SE = MB->second.end();SB != SE; SB++)
                {
                    Instruction *B = *SB;
                    int ID = idmap[B];

                    //map check site to target set ID
                    std::set<int> *idset = &checkmap[MB->first];
                    if( idset->find(ID) != idset->end() ) // idset.contains(ID)
                    {
                        errs() << ID << "already found\n";
                        continue;
                    }
                    else
                    {
                        errs() << ID << "inserted\n";
                        idset->insert(ID);
                    }
                }
            }
            return checkmap;
        }

        void calculate_stats(Module &M, InstDestMap instDestMap, InstIDMap instrIDs, InstIDSetMap idsetMap)
        {
            errs() << "stats\n";
        }

        /**
         * @brief find all indirect call and branch targets, then insert
         * IDs and checks at corresponding locations for a context sensitive
         * CFI implementation
         *
         * @arg M - module reference
         */
        virtual bool runOnModule(Module &M) 
        {  
            errs() << "/========================================================================/\n\n";

            srand(time(NULL));

            cfiLogger = new CFILogger("test.txt");
            cfiLogger->endlog();




            // find all indirect transfer sites and their destinations
            InstDestMap instDestMap = findIndBrTargets(M);
            findIndCallAndRetTargets(instDestMap);
            print_dest_map(instDestMap);


            // assign an ID to each destination
            InstIDMap instrIDs;
            if(PrecisionLevel == MultiMerge) 
                instrIDs = generateSetIDs(instDestMap); 
            else if(PrecisionLevel == MultiList) 
                instrIDs = genUniqueTargetIDs(instDestMap); 
            else
            {
                errs() << "CFI ERROR: Incorrect precision level.\n";
                return false;
            }
            print_ID_maps(instrIDs);

            // map each transfer site to a set of destination IDs
            InstIDSetMap targetCheckIDs = generateCheckIDs(instDestMap, instrIDs);
            print_ID_check_maps(targetCheckIDs);

            // insert IDs and checks into IR as instrinsics
            cfi::CFILowering cfil = cfi::CFILowering(M);
            cfil.insertChecks(targetCheckIDs);
            cfil.insertIDs(instrIDs);

            calculate_stats(M, instDestMap, instrIDs, targetCheckIDs);

            errs() << "/========================================================================/\n\n";
            return true;
        }
    };
}

char cfi::CfiPass::ID = 0;
static RegisterPass<cfi::CfiPass> X("cfi", "CFI instrumentation pass");
