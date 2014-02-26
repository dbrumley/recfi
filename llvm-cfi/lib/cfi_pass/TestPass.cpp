//===- Test.cpp ----------------===//
// Joe Battaglia, jabat@cmu.edu
// Oulin Yao, oyao@cmu.edu
//
//===----------------------------------------------------------------------===//
//
// This file implements... TODO
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "test_pass"
#include "llvm/ADT/Statistic.h"                                                                                                                        
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"

#include "llvm/ExecutionEngine/MCJIT.h"
#include "llvm/ExecutionEngine/SectionMemoryManager.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/IR/LLVMContext.h"                                                                                                                       
#include "llvm/Analysis/Verifier.h"
#include "llvm/PassManager.h"
#include "llvm/Support/Dwarf.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Target/TargetOptions.h"
#include "llvm/Transforms/Scalar.h"

using namespace llvm;

STATISTIC(TestCounter, "Counts number of instructions inserted");

/*  Insert ID1 Beginning of each function
 *  Insert ID2 directly after each Call
 *  Insert IdCheckTarget directly before each indrect Call
 *  Insert CheckReturn before each return
 */

namespace {

    struct Test : public FunctionPass {
        static char ID; // Pass identification, replacement for typeid
        Test() : FunctionPass(ID) {}


        typedef std::vector<std::string> ArgNames;
        typedef std::vector<llvm::Type*> ArgTypes;
        typedef std::vector<llvm::Value*> ArgVals;

        /// Utility used to create a function, both declarations and definitions
        /// @param module for module instance
        /// @param retType function return type
        /// @param theArgTypes function's ordered argument types
        /// @param theArgNames function's ordered arguments needed if use of this
        ///        function corresponds to a function definition. Use empty
        ///        aggregate for function declarations.
        /// @param functName function name
        /// @param linkage function linkage
        /// @param declarationOnly for function declarations
        /// @param isVarArg function uses vararg arguments
        /// @returns function instance
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
        }

            Function *insertFunc = NULL;
            Function *checkCallFunc = NULL;
            Function *checkReturnFunc = NULL;
            Function *cfiid_intrinsic = NULL;
            llvm::IRBuilder<> *builder = NULL;

            virtual bool doInitialization(Module &M){
                llvm::IRBuilder<> theBuilder(M.getContext());
                builder = &theBuilder;

                ArgNames argNames;
                ArgTypes argTypes;
                llvm::Type *retType;

                argTypes.push_back(builder->getInt32Ty());
                retType = builder->getVoidTy();
                argNames.push_back("inserted_id");
                insertFunc = createFunction(M,
                        retType,
                        argTypes,
                        argNames,
                        "cfi.insertID",
                        llvm::Function::ExternalLinkage,
                        true,
                        false);

                argNames.clear();
                argNames.push_back("dest_id");
                checkCallFunc = createFunction(M,
                        retType,
                        argTypes,
                        argNames,
                        "cfi.checkCall",
                        llvm::Function::ExternalLinkage,
                        true,
                        false);

                checkReturnFunc = createFunction(M,
                        retType,
                        argTypes,
                        argNames,
                        "cfi.checkReturn",
                        llvm::Function::ExternalLinkage,
                        true,
                        false);
                //argTypes.clear();
                cfiid_intrinsic = createFunction(M,
                        retType,
                        argTypes,
                        argNames,
                        "llvm.cfiid",
                        llvm::Function::ExternalLinkage,
                        true,
                        false);
                M.dump();
                return true; 
            }

            //Iterate over each callSite
            //   put an insertID at the beginning on each function, after each call
            //   put an checkCall before each call
            //insert a checkReturn before each return
            virtual bool runOnFunction(Function &F) {

                TestCounter++;

                llvm::IRBuilder<> theBuilder(F.getContext());
                builder = &theBuilder;
                //F.setPrefixData(builder->getInt32(2425393296));

                Value* functionStartID = llvm::ConstantInt::get(builder->getInt32Ty(), 11111);
                Value* returnSiteID = llvm::ConstantInt::get(builder->getInt32Ty(), 22222);

                // Insert ID at function start
                BasicBlock *BB_begin = &F.getEntryBlock();
                BasicBlock::iterator insertion_pt = BB_begin->getFirstInsertionPt();
                builder->SetInsertPoint(BB_begin, insertion_pt);
                builder->CreateCall(insertFunc, functionStartID);
                //builder->CreateCall(cfiid_intrinsic, functionStartID);

                std::string skipStr = "cfi.insertID";


                // Insert check before/after each call instruction, and before each return
                for (Function::iterator  BB = F.begin(), BE = F.end(); BB != BE; ++BB){
                    for(BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I)
                    {
                        if (CallInst* callInst = dyn_cast<CallInst>(&*I)) {
                            // We know we've encountered a call instruction
                            Function * calledFunction = callInst->getCalledFunction();
                            if(calledFunction != NULL)
                            {
                                if(skipStr.compare(calledFunction->getName()) == 0)
                                    continue;
                            } 
                            //callInst->setCFIData(builder->getInt32(2425393296));

                            builder->SetInsertPoint(I);
                            builder->CreateCall(checkCallFunc, functionStartID);
                            I++;
                            builder->SetInsertPoint(I);
                            builder->CreateCall(insertFunc, returnSiteID);
                            I--;
                        } 
                        else if (ReturnInst* retInst = dyn_cast<ReturnInst>(&*I)) {
                            //builder->SetInsertPoint(I);
                            //builder->CreateCall(checkReturnFunc, returnSiteID);
                        }
                    }
                }
                // Print function after modifications
                //printFunction(F);
              return true;
            }

            virtual bool printFunction(Function &F) {
                errs() << F.getName() << '\n';
                for(Function::iterator BB = F.begin(), EE = F.end(); BB != EE; ++BB)
                {
                    errs() << "\t[Block]" << '\n';
                    for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I)
                    {
                        errs() << "\t\t" << *I << '\n'; 
                    }
                }
                return false;
            }

        };
    }

    char Test::ID = 0;
    static RegisterPass<Test> X("test", "Test Pass for CFI");
