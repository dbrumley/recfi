//===- SuperGraph.cpp - inserts CFI checks based on control flow graph ----===//
//
// This file inserts IDs and checks for a CFI implementation based on the
// control flow graphs and the call graph of a module.
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "SuperGraph"

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "dsa/CallTargets.h"
#include "llvm/Support/CommandLine.h"

using namespace llvm;

#define CFI_INSERT_INTRINSIC "llvm.cfiid"
#define CFI_CHECK_TAR_INTRINSIC "llvm.cfichecktar"
#define CFI_CHECK_RET_INTRINSIC "llvm.cficheckret"
#define CFI_ABORT "cfi_abort"

#define MAX 0xFFFF

STATISTIC(MergeCounter, "Counts number of times destination sets are merged");

namespace {
    /**
     * @brief CFILowering class - handles creation of llvm intrinsic
     * functions
     */
    class CFILowering {
        typedef std::vector<std::string> ArgNames;
        typedef std::vector<llvm::Type*> ArgTypes;
        typedef std::vector<llvm::Value*> ArgVals;
        
        //cfi intrinsic functions, all are of the form:
        //@llvm.arm.cfiid(i32 dest_id)
        Function *cfiInsertID;
        Function *cfiCheckTarget;
        Function *cfiCheckReturn;
        
        /**
         * @brief Creates a function
         *
         * @return Function pointer to newly created function
         *
         * @arg module - current function
         * @arg retType - return type of function
         * @arg theArgTypes - types for function args
         * @arg theArgNames - names for function args
         * @arg functName - name of function
         * @arg linkage - linkage type
         * @arg declarationOnly - if the function is only a declaration
         * @arg isVarArg - if function has variable number of arguments
         */
        Function *createFunction(llvm::Module &module,
                                 llvm::Type *retType,
                                 const ArgTypes &theArgTypes,
                                 const ArgNames &theArgNames,
                                 const std::string &functName,
                                 llvm::GlobalValue::LinkageTypes linkage,
                                 bool declarationOnly,
                                 bool isVarArg) {
            llvm::FunctionType *functType =
                llvm::FunctionType::get(retType, theArgTypes, isVarArg);
            llvm::Function *ret =
                llvm::Function::Create(functType, linkage, functName, &module);
            if (!ret || declarationOnly)
                return(ret);
            return NULL;
        }
        
        /**
         * @brief creates a CFI intrinsic function
         *
         * @return Function pointer
         *
         * @arg funcName - name of llvm intrinsic function
         * @arg M - current module
         */
        Function *createCfiFunc(std::string funcName, Module &M)
        {
            //create the cfiid_intrinsic function
            llvm::IRBuilder<> builder(M.getContext());
            
            //function
            llvm::Type *retType = builder.getVoidTy();
            
            //function arg names
            ArgNames argNames;
            argNames.push_back("dest_id");
            
            //function arg types
            ArgTypes argTypes;
            argTypes.push_back(builder.getInt32Ty());
            
            //ex. call void @llvm.arm.cfiid(i32 dest_id)
            Function *cfiFunc = createFunction(M,
                                               retType,
                                               argTypes,
                                               argNames,
                                               funcName,
                                               llvm::Function::ExternalLinkage,
                                               true,
                                               false);
            return cfiFunc;
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
            cfiInsertID = createCfiFunc(CFI_INSERT_INTRINSIC, M);
            cfiCheckTarget = createCfiFunc(CFI_CHECK_TAR_INTRINSIC, M);
            cfiCheckReturn = createCfiFunc(CFI_CHECK_RET_INTRINSIC, M);
        }
        
        /**
         * @brief gets cfiInsertID function
         *
         * @return pointer to function
         */
        Function *getCfiInsertID()
        {
            return cfiInsertID;
        }
        
        /**
         * @brief gets cfiCheckTarget function
         *
         * @return pointer to function
         */
        Function *getCfiCheckTarget()
        {
            return cfiCheckTarget;
        }
        
        /**
         * @brief gets cfiCheckReturn function
         *
         * @return pointer to function
         */
        Function *getCfiCheckReturn()
        {
            return cfiCheckReturn;
        }
        
        /**
         * @brief create cfi_abort function:
         *
         * void abort()
         * {
         *   while(1);
         * }
         *
         * @return void
         * 
         * @arg M - module to create function in
         */
        void createAbort(Module &M)
        {
            Constant *c = M.getOrInsertFunction(CFI_ABORT,
                                                Type::getVoidTy(M.getContext()),
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
    };
    
    /**
     * @brief SuperGraph - module pass on the llvm IR that inserts cfi
     * related information as llvm intrinsic functions
     */
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
        //mappings of callsites/branch sites to IDs that need to be
        //checked against
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
                        //errs() << "target function: " << F->getName() << "\n";
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
                                
                            BasicBlock *B = const_cast<BasicBlock *>
                                (&F->getEntryBlock());
                            indDestMap[I].insert(B);
                        }
                        
                        //add call site to retMap
                        if (!F->isIntrinsic())
                            retMap[const_cast<Function *>(F)].insert(I);
                        
                        //Joe added this stuff
                        /*
                        if( F->getBasicBlockList().empty() )
                            continue;
                        BasicBlock *B = const_cast<BasicBlock *>
                                (&F->back());
                        Instruction *backInst = const_cast<Instruction*>
                                (&B->back());
                        errs() << "Back instr: " <<  *backInst << "\n";
                        */
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
                            MergeCounter++;
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
                int ID = rand() % MAX;

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
                //in set is same (there should always be an element in set)
                Key K = *MB->second.begin();
                int ID = idmap[K];

                //map check site to target set ID
                checkmap[MB->first] = ID;
            }
        }

        /********** Functions for inserting IDs and ID check code **********/

        /**
         * @brief Inserts IDs into their respective sites
         *
         * @return void
         *
         * @arg cfil - cfi lowering
         * @arg M - current module
         */
        void insertIDs(CFILowering cfil, Module &M)
        {
            Function *cfiInsertID = cfil.getCfiInsertID();
           
            //insert IDs before target sites
            BBIDMap::iterator BB, BE;
            for (BB = targetIDs.begin(), BE = targetIDs.end();
                 BB != BE; BB++)
            {
                llvm::IRBuilder<> builder(BB->first);
                Value *ID = llvm::ConstantInt::get(builder.getInt32Ty(),
                                                   BB->second);

                builder.SetInsertPoint(BB->first->begin());
                builder.CreateCall(cfiInsertID, ID);
            }
            
            //insert IDs after call sites
            InstrIDMap::iterator IB, IE;
            for (IB = callSiteIDs.begin(), IE = callSiteIDs.end();
                 IB != IE; IB++)
            {
                llvm::IRBuilder<> builder(IB->first->getParent());
                Value *ID = llvm::ConstantInt::get(builder.getInt32Ty(),
                                                   IB->second);

                //get next instruction
                BasicBlock::iterator II(IB->first);
                II++;
                
                builder.SetInsertPoint(II);
                builder.CreateCall(cfiInsertID, ID);
            }
        }
        
        /**
         * @brief Inserts checks into their respective sites
         *
         * @return void
         *
         * @arg cfil - cfi lowering
         * @arg M - current module
         */
        void insertChecks(CFILowering cfil, Module &M)
        {
            Function *cfiCheckTarget = cfil.getCfiCheckTarget();
            Function *cfiCheckReturn = cfil.getCfiCheckReturn();
            
            //insert ID checks before call sites
            InstrIDMap::iterator IB, IE;
            for (IB = targetCheckIDs.begin(), IE = targetCheckIDs.end();
                 IB != IE; IB++)
            {
                llvm::IRBuilder<> builder(IB->first->getParent());
                Value *ID = llvm::ConstantInt::get(builder.getInt32Ty(),
                                                   IB->second);
                
                BasicBlock::iterator II(IB->first);
                
                //insert before current instruction
                builder.SetInsertPoint(II);
                builder.CreateCall(cfiCheckTarget, ID);
            }
            
            //insert ID checks at return sites
            FuncIDMap::iterator FB, FE;
            for (FB = returnCheckIDs.begin(), FE = returnCheckIDs.end();
                 FB != FE; FB++)
            {
                Function *F = FB->first;
                
                //find all returns
                Function::iterator BB, BE;
                for (BB = F->begin(), BE = F->end();
                     BB != BE; BB++)
                {
                    BasicBlock *B = &*BB;
                    
                    //check if basic block ends with return
                    if (TerminatorInst *TI = B->getTerminator())
                    {
                        if (ReturnInst *RI = dyn_cast<ReturnInst>(TI))
                        {
                            llvm::IRBuilder<> builder(B);
                            Value *ID = llvm::ConstantInt::get(builder.getInt32Ty(),
                                                               FB->second);
                            
                            BasicBlock::iterator II(RI);
                            
                            //insert before return instruction
                            builder.SetInsertPoint(II);
                            builder.CreateCall(cfiCheckReturn, ID);
                        }
                    }
                }
            }
        }

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

            //find indirect branch targets
            Module::iterator MB, ME;
            for (MB = M.begin(), ME = M.end(); MB != ME; MB++)
            {
                Function *F = &*MB;
                findIndBrTargets(F);
            }
            //find indirect call and return targets
            findIndCallAndRetTargets();
            
            //print_dest_map();

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
            
            //insert IDs and checks into IR
            CFILowering cfil = CFILowering(M);
            insertIDs(cfil, M);
            insertChecks(cfil, M);
            
            //create cfi_abort function:
            cfil.createAbort(M);
            
            return false;
        }
    };
}

char SuperGraph::ID = 0;
static RegisterPass<SuperGraph> X("SuperGraph", "SuperGraph Pass (with getAnalysisUsage implemented)");
