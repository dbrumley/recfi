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

#include "llvm/Analysis/AliasAnalysis.h"

using namespace llvm;

#define CFI_INSERT_INTRINSIC "llvm.cfiid"
#define CFI_CHECK_TAR_INTRINSIC "llvm.cfichecktar"
#define CFI_CHECK_RET_INTRINSIC "llvm.cficheckret"
#define CFI_ABORT "cfi_abort"

#define MAX 0xFFFF

namespace {

    typedef dsa::CallTargetFinder<EQTDDataStructures> CTF;

    //set types
    typedef std::set<Instruction *> InstSet;

    //helper map types
    typedef std::map<Instruction *, InstSet> InstDestMap;

    //id map types
    typedef std::map<Instruction *, int> InstIDMap;
    
    typedef std::map<Instruction *, std::set<int> > InstIDSetMap;

    //iterator types
    typedef std::list<CallSite>::iterator CallSiteIterator;
    typedef std::vector<const Function *>::iterator CallTargetIterator;

    typedef std::vector<std::string> ArgNames;
    typedef std::vector<llvm::Type*> ArgTypes;
    typedef std::vector<llvm::Value*> ArgVals;

    /**
     * @brief CFILowering class - handles creation of llvm intrinsic
     * functions
     */
    class CFILowering {
        //cfi intrinsic functions, all are of the form:
        //@llvm.arm.cfiid(i32 dest_id)
        Function *cfiInsertID;
        Function *cfiCheckTarget;
        Function *cfiCheckReturn;

        Module *mod;
        
        /**
         * @brief creates a CFI intrinsic function
         *
         * @return Function pointer
         *
         * @arg funcName - name of llvm intrinsic function
         * @arg M - current module
         */
        Function *createCfiFunc(std::string funcName)
        {
            //create the cfiid_intrinsic function
            llvm::IRBuilder<> builder(mod->getContext());
            
            //function
            llvm::Type *retType = builder.getVoidTy();
            
            //function arg names
            ArgNames argNames;
            argNames.push_back("dest_id");
            
            //function arg types
            ArgTypes argTypes;
            argTypes.push_back(builder.getInt32Ty());
            
            //ex. call void @llvm.arm.cfiid(i32 dest_id)
            llvm::FunctionType *functType = llvm::FunctionType::get(retType, argTypes, false);
            return llvm::Function::Create(functType, llvm::Function::ExternalLinkage, funcName, mod);
        }
        
        /**
         * @brief create cfi_abort function:
         * void abort()
         * {while(1);}
         */
        void createAbort()
        {
            Constant *c = mod->getOrInsertFunction(CFI_ABORT,
                                                Type::getVoidTy(mod->getContext()),
                                                NULL);
            Function *abort = dyn_cast<Function>(c);
            abort->setCallingConv(CallingConv::C);
            BasicBlock* entry = BasicBlock::Create(getGlobalContext(),
                                                   "entry",
                                                   abort);
            BasicBlock* loop = BasicBlock::Create(getGlobalContext(),
                                                  "loop",
                                                  abort);
            IRBuilder<> builder(entry);
            builder.CreateBr(loop);
            builder.SetInsertPoint(loop);
            builder.CreateBr(loop);
        }
        
    public:
        /**
         * @brief initializes CFILowering object by initializing cfi
         * intrinsic functions
         *
         * @arg M - module
         */
        CFILowering(Module &M)
        {
            mod = &M;
            cfiInsertID = createCfiFunc(CFI_INSERT_INTRINSIC);
            cfiCheckTarget = createCfiFunc(CFI_CHECK_TAR_INTRINSIC);
            cfiCheckReturn = createCfiFunc(CFI_CHECK_RET_INTRINSIC);
            createAbort();
        }
        
        
        /**
         * @brief Inserts IDs into their respective sites
         */
        void insertIDs(InstIDMap instrIDs)
        {
            //insert IDs after call sites
            InstIDMap::iterator IB, IE;
            for (IB = instrIDs.begin(), IE = instrIDs.end();
                 IB != IE; IB++)
            {
                llvm::IRBuilder<> builder(IB->first->getParent());
                Value *ID = llvm::ConstantInt::get(builder.getInt32Ty(),
                                                   IB->second);

                //get next instruction
                BasicBlock::iterator II(IB->first);
                
                if(dyn_cast<CallInst>(II))
                    II++;
                builder.SetInsertPoint(II);
                builder.CreateCall(cfiInsertID, ID);
            }
        }
        
        /**
         * @brief Inserts checks into their respective sites
         */
        void insertChecks(InstIDSetMap targetCheckIDs)
        {
            //insert ID checks before call sites
            InstIDSetMap::iterator IB, IE;
            for (IB = targetCheckIDs.begin(), IE = targetCheckIDs.end();
                 IB != IE; IB++)
            {
                Instruction* callInst = IB->first;
                std::set<int>::iterator setB, setE;
                for(setB = IB->second.begin(), setE = IB->second.end();
                        setB != setE; setB++)
                {
                    int intID = *setB;
                    llvm::IRBuilder<> builder(callInst->getParent());
                    Value *ID = llvm::ConstantInt::get(builder.getInt32Ty(),
                            intID);

                    BasicBlock::iterator II(callInst);

                    //insert before current instruction
                    builder.SetInsertPoint(II);
                    if (dyn_cast<ReturnInst>(callInst))
                    {
                        builder.CreateCall(cfiCheckReturn, ID);
                    }
                    else
                    {
                        builder.CreateCall(cfiCheckTarget, ID);
                    }
                }
            }
        }
    };
    
    /**
     * @brief CfiPass - module pass on the llvm IR that inserts cfi
     * related information as llvm intrinsic functions
     */
    struct CfiPass : public ModulePass {
        static char ID;
        CfiPass() : ModulePass(ID) {}


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

                        if (F->isIntrinsic())
                        {
                            //errs() << "Skipping intrinsic: " << F->getName()  << "\n";
                            continue;
                        }
                        if( F->getBasicBlockList().empty() )
                        {
                            //errs() << "Skipping declaration: " << F->getName()  << "\n";
                            continue;
                        }

                        //add indirect call targets to indCallDestMap
                        if (!cs.getCalledFunction())
                        {
                            //function that is declaration only
                            if (F->isDeclaration())
                            {
                                errs() << "SuperGraphError: "
                                    << "Indirect function "
                                    << I->getParent()->getName() << " "
                                    << "calls declaration only target "
                                    << F->getName() << "; cannot insert ID "
                                    << "before declaration only targets\n";
                                continue;
                            }

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

        InstIDMap genUniqueTargetIDs(InstDestMap& tarmap)
        {
            InstIDMap idmap;

            InstSet visitedSet;
            InstDestMap::iterator MB, ME;
            /* for each callsite */
            for (MB = tarmap.begin(), ME = tarmap.end(); MB != ME; MB++)
            {
                InstSet mset = MB->second;
                InstSet::iterator LB, LE;
                /* for each target */
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

        /**
         * @brief generates a map of constraint check sites and the ID to be 
         * checked against
         */
        InstIDSetMap generateCheckIDs(InstDestMap& tarmap,
                              InstIDMap& idmap)
                              
        {
            InstIDSetMap checkmap;
            InstDestMap::iterator MB, ME;
            for (MB = tarmap.begin(), ME = tarmap.end(); MB != ME; MB++)
            {
                //get the first target of the target set; ID of all targets
                //in set is same (there should always be an element in set)
                InstSet::iterator SB, SE;
                for (SB = MB->second.begin(), SE = MB->second.end();
                     SB != SE; SB++)
                {
                    Instruction *B = *SB;
                    int ID = idmap[B];
                    //map check site to target set ID
                    checkmap[MB->first].insert(ID);
                }
            }
            return checkmap;
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

            // find all indirect transfer sites and their destinations
            InstDestMap instDestMap = findIndBrTargets(M);
            findIndCallAndRetTargets(instDestMap);
            //print_dest_map(instDestMap);
            
            // assign an ID to each destination
            InstIDMap instrIDs = genUniqueTargetIDs(instDestMap); 
            //print_ID_maps(instrIDs);

            // map each transfer site to a set of destination IDs
            InstIDSetMap targetCheckIDs = generateCheckIDs(instDestMap, instrIDs);
            //print_ID_check_maps(targetCheckIDs);

            // insert IDs and checks into IR as instrinsics
            CFILowering cfil = CFILowering(M);
            cfil.insertChecks(targetCheckIDs);
            cfil.insertIDs(instrIDs);
            
            errs() << "/========================================================================/\n\n";
            return false;
        }
        
        /********** Debug Functions **********/

        /*
         * prints out the destination map
         */
        void print_dest_map(InstDestMap instDestMap)
        {
            errs() << "Indirect Destination Map:\n";
            
           InstDestMap::iterator DB, DE;
            for (DB = instDestMap.begin(), DE = instDestMap.end(); DB != DE; DB++)
            {
                errs() << "\tInstruction: ";
                DB->first->dump();

                errs() << "\tTargets:\n";
                InstSet::iterator SB, SE;
                for (SB = DB->second.begin(), SE = DB->second.end();
                     SB != SE; SB++)
                {
                    Instruction *B = *SB;
                    errs() << "\t\t";
                    B->dump();
                }
                errs() << "\n";
            }
        }

        /*
         * prints out the ID maps
         */
        void print_ID_maps(InstIDMap callSiteIDs)
        {
            
            errs() << "\nTarget ID Map:\n";
           // int count = 0;
            
            InstIDMap::iterator IB, IE;
            for (IB = callSiteIDs.begin(), IE = callSiteIDs.end();
                 IB != IE; IB++)
            {
                errs() << "\tTarget Instr: ";
                IB->first->dump();
                errs() << "\t\tID = " << IB->second << "\n";
            }
        }

        /*
         * prints out the ID check maps
         */
        void print_ID_check_maps(InstIDSetMap targetCheckIDs)
        {
            errs() << "\nTarget ID Check Map:\n";

            InstIDSetMap::iterator IB, IE;
            for (IB = targetCheckIDs.begin(), IE = targetCheckIDs.end();
                 IB != IE; IB++)
            {
                errs() << "\tTransfer Instr: ";
                IB->first->dump();
                std::set<int>::iterator setB, setE;
                for(setB = IB->second.begin(), setE = IB->second.end();
                        setB != setE; setB++)
                {
                    int intID = *setB;
                    errs() << "\t\tTarget ID = " << intID << "\n";
                }
            }
        }

    };
}

char CfiPass::ID = 0;
static RegisterPass<CfiPass> X("cfi-multi-wl", "CFI pass, multi-id with whitelisting)");
