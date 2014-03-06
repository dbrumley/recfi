//===- SuperGraph.cpp - inserts CFI checks based on control flow graph ----===//
//
// This file inserts IDs and checks for a CFI implementation based on the
// control flow graphs and the call graph of a module.
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "SuperGraph_pass"

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

#include "dsa/CallTargets.h"

using namespace llvm;

namespace {
    struct SuperGraph : public ModulePass {
        static char ID;
        SuperGraph() : ModulePass(ID) {}

        typedef dsa::CallTargetFinder<EQTDDataStructures> CTF;

        //set types
        typedef std::set<BasicBlock *> BBSet;
        typedef std::set<Instruction *> InstSet;

        //helper map types
        typedef std::map<Instruction *, BBSet> DestMap;
        typedef std::map<Function *, InstSet> RetMap;

        //id map types
        typedef std::map<BasicBlock *, int> BBIDMap;
        typedef std::map<Instruction *, int> InstrIDMap;
        typedef std::map<Function *, int> FuncIDMap;

        //iterator types
        typedef std::list<CallSite>::iterator CallSiteIterator;
        typedef std::vector<const Function *>::iterator CallTargetIterator;

        virtual void getAnalysisUsage(AnalysisUsage &AU) const {
            AU.addRequired<CTF>();
        }

        //mapping of indirect target (branch or call) instructions to
        //their destinations
        DestMap indDestMap;

        //mapping of functions to their call sites
        RetMap retMap;

        //maps of ID inline sites to IDs:
        //mappings of indirect targets to their IDs for branch/call checking
        BBIDMap targetIDs;
        //mappings of callsites to their IDs for return checking
        InstrIDMap callSiteIDs;

        //maps of ID check sites to IDs:
        //mappings of callsites/branch sites to IDs that need to be checked against
        InstrIDMap targetCheckIDs;
        //mappings of return sites to IDs that need to be checked against
        FuncIDMap returnCheckIDs;

        /********** Functions for generating IDs ***********/

        /**
         * @brief Find all indirect branch targets and add them to indDestMap
         *
         * @return void
         *
         * @arg F - function to iterate over
         */
        void findIndBrTargets(Function *F)
        {
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
                            indDestMap[IBI].insert(IBI->getSuccessor(j));
                        }
                    }
                }
            }
        }

        /**
         * @brief Find all indirect call targets and add them to indDestMap,
         * and find all return targets and add them to retTargets
         *
         * @return void
         */
        void findIndCallAndRetTargets()
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

                        //add indirect call targets to indCallDestMap
                        if (!cs.getCalledFunction())
                        {
                            BasicBlock *B = const_cast<BasicBlock *>
                                (&F->getEntryBlock());
                            indDestMap[I].insert(B);
                        }

                        //add call site to retMap
                        retMap[const_cast<Function *>(F)].insert(I);
                    }
                }
            }
        }

        /**
         * @brief merge target destination sets, generate an ID for each set,
         * and add all targets to target ID map
         *
         * @return void
         *
         * @tparam TargetSet - target set type in DestMap or RetMap
         * @tparam TargetMap - map of code redirection to target set, either
         * DestMap or RetMap
         * @tparam Key - key type of target ID map, same type as elements in
         * TargetSet
         * @tparam TargetIDMap - map of targets to their IDs
         *
         * @arg tarmap - target map
         * @arg idmap - target id map
         */
        template<
            typename TargetSet,
            typename TargetMap,
            typename Key,
            typename TargetIDMap
            >
        void generateIDs(TargetMap& tarmap, TargetIDMap& idmap)
        {
            std::list<TargetSet> setList;

            //merge target destination sets
            typename TargetMap::iterator MB, ME;
            for (MB = tarmap.begin(), ME = tarmap.end(); MB != ME; MB++)
            {
                TargetSet mset = MB->second;

                //add first set to setList
                if (setList.size() == 0)
                {
                    setList.push_back(mset);
                }
                else
                {
                    //check if current destination set intersects with previous
                    //sets, if so, merge them
                    TargetSet intersect;
                    
                    typename std::list<TargetSet>::iterator LB, LE;
                    for (LB = setList.begin(), LE = setList.end();
                         LB != LE; LB++)
                    {
                        TargetSet lset = *LB;

                        set_intersection(mset.begin(), mset.end(),
                                         lset.begin(), lset.end(),
                                         std::inserter(intersect,
                                                       intersect.begin()));
                        if (intersect.size() > 0)
                        {
                            lset.insert(mset.begin(), mset.end());
                            break;
                        }
                    }
                    
                    //if no intersections found, add mset to list
                    if (intersect.size() == 0)
                    {
                        setList.push_back(mset);
                    }
                }
            }

            //generate ID for each set in setList, then add each block
            //and their ID to idmap
            typename std::list<TargetSet>::iterator LB, LE;
            for (LB = setList.begin(), LE = setList.end(); LB != LE; LB++)
            {
                TargetSet lset = *LB;
                int ID = rand();

                typename TargetSet::iterator SB, SE;
                for (SB = lset.begin(), SE = lset.end(); SB != SE; SB++)
                {
                    Key K = *SB;
                    idmap[K] = ID;
                }
            }
        }

        /**
         * @brief generates a map of constraint check sites and the ID to be 
         * checked against
         *
         * @return void
         *
         * @tparam TargetMap - map of code redirection to target set, either
         * DestMap or RetMap
         * @tparam Key - key type of target ID map, same type as elements in
         * TargetSet
         * @tparam TargetIDMap - map of targets to their IDs
         * @tparam CheckIDMap - map of check sites to IDs to check against
         *
         * @arg tarmap - target map
         * @arg idmap - target id map
         * @arg checkmap - check id map
         */
        template<
            typename TargetMap,
            typename Key,
            typename TargetIDMap,
            typename CheckIDMap
            >
        void generateCheckIDs(TargetMap& tarmap,
                              TargetIDMap& idmap,
                              CheckIDMap& checkmap)
        {
            typename TargetMap::iterator MB, ME;
            for (MB = tarmap.begin(), ME = tarmap.end(); MB != ME; MB++)
            {
                //get the first target of the target set; ID of all targets
                //in set is same (there should always be an element in second)
                Key K = *MB->second.begin();
                int ID = idmap[K];

                //map check site to target set ID
                checkmap[MB->first] = ID;
            }
        }

        /********** Functions for inserting IDs and checking code **********/

        /*
         * Inserts IDs into their respective sites
         *//*
        void insertIDs(Module &M) 
        {
          //initialize cfiid_intrinsic function
          Function *cfiid_intrinsic = NULL;
          llvm::IRBuilder<> builder(M.getContext());

          //function return
          llvm::Type *retType = builder.getVoidTy();

          //function arg names
          ArgNames argNames;
          argNames.push_back("dest_id");

          //function args
          ArgTypes argTypes;
          argTypes.push_back(builder.getInt32Ty());

          //call void @llvm.arm.cfiid(i32 dest_id)
          cfiid_intrinsic = createFunction(M,
              retType,
              argTypes,
              argNames,
              "llvm.arm.cfiid",
              llvm::Function::ExternalLinkage,
              true,
              false);

          for (BBIDMap::iterator BB = targetIDs.begin(), BE = targetIDs.end();
            BB != BE; BB++)
          {
            llvm::IRBuilder<> builder(BB->first);
        Value * ID = llvm::ConstantInt::get(builder.getInt32Ty(), BB->second);

        builder.SetInsertPoint(BB->first->begin());
        builder.CreateCall(cfiid_intrinsic, ID);
          }
        }*/

        /********** Debug Functions **********/

        /*
        * prints out the destination map
        */
        void print_dest_map()
        {
            errs() << "Indirect Destination Map:\n";
            DestMap& cm = indDestMap;
            
            DestMap::iterator DB, DE;
            for (DB = cm.begin(), DE = cm.end(); DB != DE; DB++)
            {
                errs() << "Instruction:\n\t";
                DB->first->dump();

                errs() << "Targets:\n";
                BBSet::iterator SB, SE;
                for (SB = DB->second.begin(), SE = DB->second.end();
                     SB != SE; SB++)
                {
                    BasicBlock *B = *SB;
                    B->dump();
                }
                errs() << "\n";
            }

            errs() << "Return Map:\n";
            RetMap& rm = retMap;
            
            RetMap::iterator RB, RE;
            for (RB = rm.begin(), RE = rm.end(); RB != RE; RB++)
            {
                errs() << "Function: " << RB->first->getName() << "\n";

                errs() << "Call Sites:\n";
                InstSet::iterator SB, SE;
                for (SB = RB->second.begin(), SE = RB->second.end();
                     SB != SE; SB++)
                {
                    Instruction *I = *SB;
                    I->dump();
                }
            }
        }

        /*
         * prints out the ID maps
         */
        void print_ID_maps()
        {
            errs() << "\nTarget ID Map:\n";
            int count = 0;
            
            BBIDMap::iterator BB, BE;
            for (BB = targetIDs.begin(), BE = targetIDs.end();
                 BB != BE; BB++)
            {
                count++;
                errs() << "BasicBlock " << count << ": ID = "
                    << BB->second << "\n";
            }

            errs() << "\nCall Site ID Map:\n";
            
            InstrIDMap::iterator IB, IE;
            for (IB = callSiteIDs.begin(), IE = callSiteIDs.end();
                 IB != IE; IB++)
            {
                IB->first->dump();
                errs() << "\tID = " << IB->second << "\n";
            }
        }

        /*
         * prints out the ID check maps
         */
        void print_ID_check_maps()
        {
            errs() << "\nTarget ID Check Map:\n";

            InstrIDMap::iterator IB, IE;
            for (IB = targetCheckIDs.begin(), IE = targetCheckIDs.end();
                 IB != IE; IB++)
            {
                errs() << "Br/Call Instr: ";
                IB->first->dump();
                errs() << "\tID = " << IB->second << "\n";
            }

            errs() << "\nReturn ID Check Map:\n";

            FuncIDMap::iterator FB, FE;
            for (FB = returnCheckIDs.begin(), FE = returnCheckIDs.end();
                 FB != FE; FB++)
            {
                errs() << "Function: " << FB->first->getName() << "\n";
                errs() << "\tID = " << FB->second << "\n";
            }
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
            //seed rand with current time
            srand(time(NULL));

            Module::iterator MB, ME;
            for (MB = M.begin(), ME = M.end(); MB != ME; MB++)
            {
                Function *F = &*MB;
                findIndBrTargets(F);
            }

            findIndCallAndRetTargets(); 

            //generate IDs for branch/call targets
            generateIDs<BBSet, DestMap, BasicBlock *, BBIDMap>
                (indDestMap, targetIDs);
            //generate IDs for return targets
            generateIDs<InstSet, RetMap, Instruction *, InstrIDMap>
                (retMap, callSiteIDs);

            //generate IDs for target checking
            generateCheckIDs<DestMap, BasicBlock *, BBIDMap, InstrIDMap>
                (indDestMap, targetIDs, targetCheckIDs);
            //generate IDs for return checking
            generateCheckIDs<RetMap, Instruction *, InstrIDMap, FuncIDMap>
                (retMap, callSiteIDs, returnCheckIDs);

            return false;
        }
    };
}

char SuperGraph::ID = 0;
static RegisterPass<SuperGraph> X("SuperGraph", "SuperGraph Pass (with getAnalysisUsage implemented)");
