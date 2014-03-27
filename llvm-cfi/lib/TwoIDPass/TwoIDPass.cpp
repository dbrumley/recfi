//===------ TwoIDPass - inserts 2 ID CFI checks ---------------------------===//
//
// This file inserts IDs and checks for a CFI implementation based on Abadi's
// two ID CFI.  An ID is used to check that indirect branches always target
// beginning of functions or basic blocks, and a second ID is used to check
// that returns always target valid return sites.
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "TwoIDPass"

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

#include <set>

using namespace llvm;

#define CFI_INSERT_INTRINSIC "llvm.arm.cfiid"
#define CFI_CHECK_TAR_INTRINSIC "llvm.arm.cfichecktar"
#define CFI_CHECK_RET_INTRINSIC "llvm.arm.cficheckret"
#define CFI_ABORT "cfi_abort"

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

    struct TwoIDPass : public ModulePass {
        static char ID;
        TwoIDPass() : ModulePass(ID) {}
        
        typedef std::set<BasicBlock *> BBSet;
        
        Function *cfiInsertID;
        Function *cfiCheckTarget;
        Function *cfiCheckReturn;
        
        Value *targetID;
        Value *returnID;
        
        /**
         * @brief Find all indirect branch targets and add them to indTargets
         *
         * @return void
         *
         * @arg F - function to iterate over
         * @arg indTargets - set of indirect blocks in function
         */
        void findIndTargets(Function *F, BBSet &indTargets)
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
                            indTargets.insert(IBI->getSuccessor(j));
                        }
                    }
                }
            }
        }
        
        /**
         * @brief Insert targetID at the beginning of all basic blocks that
         * are potentially indirect targets
         *
         * @return void
         *
         * @arg M - current module
         * @arg builder - IRBuilder
         */
        void insertTargetIDs(Module &M, llvm::IRBuilder<> &builder)
        {
            Module::iterator MB, ME;
            for (MB = M.begin(), ME = M.end(); MB != ME; MB++)
            {
                Function *F = &*MB;
                if (F->isDeclaration())
                    continue;
                
                //find all indirect target blocks, including entry block
                BBSet indTargets;
                if (F->getName() != "main")
                    indTargets.insert(&F->getEntryBlock());
                findIndTargets(F, indTargets);
                
                //for all targets in indTargets, insert targetID at beginning
                //of block
                BBSet::iterator BB, BE;
                for (BB = indTargets.begin(), BE = indTargets.end();
                     BB != BE; BB++)
                {
                    BasicBlock::iterator II = (*BB)->begin();
                    builder.SetInsertPoint(II);
                    builder.CreateCall(cfiInsertID, targetID);
                }
            }
        }
        
        /**
         * @brief Insert return IDs after all call sites in function, and 
         * insert checks before indirect calls/branches and before returns
         *
         * @return void
         *
         * @arg F - current function
         * @arg builder - IRBuilder
         */
        void insertChecksAndRetIDs(Function &F, llvm::IRBuilder<> &builder)
        {
            std::string name = F.getName();
            
            //Insert check before/after each call instruction,
            //and before each return
            Function::iterator FB, FE;
            for (FB = F.begin(), FE = F.end(); FB != FE; FB++)
            {
                BasicBlock::iterator BB, BE;
                for(BB = FB->begin(), BE = FB->end(); BB != BE; BB++)
                {
                    Instruction *I = &*BB;
                    if (CallInst* callInst = dyn_cast<CallInst>(I))
                    {
                        Function *calledFunc = callInst->getCalledFunction();
                        
                        //Only insert checks before indirect calls
                        if (calledFunc == NULL)
                        {
                            builder.SetInsertPoint(BB);
                            builder.CreateCall(cfiCheckTarget, targetID);
                        }
                        
                        if (calledFunc != NULL && !calledFunc->isIntrinsic())
                        {
                            BB++;
                            builder.SetInsertPoint(BB);
                            builder.CreateCall(cfiInsertID, returnID);
                        }
                    }
                    else if (dyn_cast<IndirectBrInst>(I))
                    {
                        builder.SetInsertPoint(BB);
                        builder.CreateCall(cfiCheckTarget, targetID);
                    }
                    else if (dyn_cast<ReturnInst>(I))
                    {
                        if (name != "main")
                        {
                            builder.SetInsertPoint(BB);
                            builder.CreateCall(cfiCheckReturn, returnID);
                        }
                    }
                }
            }
        }
        
        /*
         * prints functions
         */
        void printFunction(Function &F)
        {
            errs() << F.getName() << '\n';
            
            Function::iterator FB, FE;
            for(FB = F.begin(), FE = F.end(); FB != FE; FB++)
            {
                errs() << "\t[Block]" << '\n';
                FB->dump();
            }
        }

        /**
         * @brief Insert an ID before each function, indirect target block,
         * and after each callsite.  Use the same ID for all functions and
         * indirect target blocks, and the same ID for all return sites,
         * creating a course grained CFI implementation with only two IDs
         *
         * @arg M - module reference
         */
        virtual bool runOnModule(Module &M)
        {
            //seed rand with current time
            srand(time(NULL));
            
            //generate IDs
            llvm::IRBuilder<> builder(M.getContext());
            targetID = llvm::ConstantInt::get(builder.getInt32Ty(),
                                              rand());
            returnID = llvm::ConstantInt::get(builder.getInt32Ty(),
                                              rand());
            
            //generate intrinsic functions
            CFILowering cfil = CFILowering(M);
            
            cfiInsertID = cfil.getCfiInsertID();
            cfiCheckTarget = cfil.getCfiCheckTarget();
            cfiCheckReturn = cfil.getCfiCheckReturn();
            
            //insert IDs and checks
            Module::iterator MB, ME;
            for (MB = M.begin(), ME = M.end(); MB != ME; MB++)
            {
                Function &F = *MB;
                insertChecksAndRetIDs(F, builder);
            }
            
            insertTargetIDs(M, builder);
            
            //create abort function
            cfil.createAbort(M);

            return false;
        }
    };
}

char TwoIDPass::ID = 0;
static RegisterPass<TwoIDPass> X("TwoIDPass", "Two ID CFI Pass");
