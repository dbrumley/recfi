//===- CFIUtil.cpp - Functions for inserting id and check inserting -------===//
//
// Contains functions for inserting IDs and checks into llvm IR as
// LLVM intrinsic functions
//
//===----------------------------------------------------------------------===//

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "cfi/CfiUtil.h"

using namespace llvm;

namespace cfi{

        /**
         * @brief creates a CFI intrinsic function
         *
         * @return Function pointer
         *
         * @arg funcName - name of llvm intrinsic function
         * @arg M - current module
         */
        Function *CFILowering::createCfiFunc(std::string funcName)
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
         * @brief create cfi_abort function as a while loop:
         *
         * void abort()
         * {while(1);}
         *
         * We do not call any other functions in abort, such as print,
         * because we do not want to introduce additional control flow
         * values that may be corrupted by the attacker.
         *
         * @return void
         */
        void CFILowering::createAbort()
        {
            //get cfi_abort function if exists, else create new func
            Constant *c = mod->getOrInsertFunction(CFI_ABORT,
                                                   Type::getVoidTy(mod->getContext()),
                                                   NULL);
            Function *abort = dyn_cast<Function>(c);
            abort->setCallingConv(CallingConv::C);

            //create entry block
            BasicBlock* entry = BasicBlock::Create(getGlobalContext(),
                                                   "entry",
                                                   abort);
            //create loop block
            BasicBlock* loop = BasicBlock::Create(getGlobalContext(),
                                                  "loop",
                                                  abort);
            //entry block will branch to loop block,
            //which will continue to branch to
            //loop block
            IRBuilder<> builder(entry);
            builder.CreateBr(loop);
            builder.SetInsertPoint(loop);
            builder.CreateBr(loop);
        }

        /**
         * @brief create a wrapper function for a user-created function to be passed
         * as a function pointer to an external library.
         *
         * This wrapper will have no ID on entry in order to allow it to be called by
         * an external library function. It will call funcName without ID checks and
         * will have an ID that will allow funcName to return to this wrapper. It will
         * perform no return ID checks when returning back to the external library 
         * function since that function will not have an ID.
         *
         * @arg funcName Name of function to create wrapper for
         * @return void
         */
        void CFILowering::createExternalLibWrapper(std::string funcName)
        {
            GlobalValue *F = getNamedValue(funcName);
            assert(F != NULL);
            // TODO: funcName takes arguments 

            std::string wrapperName = funcName + "_libwrapper";

            Constant *c = mod->getOrInsertFunction(wrapperName,
                                                   F->getReturnType(),
                                                   NULL);
            Function *wrapper = dyn_cast<Function>(c);
            BasicBlock* wrapperEntry = BasicBlock::Create(getGlobalContext(),
                                                          "wrapperEntry",
                                                          wrapper);
            BasicBlock* wrapperExit = BasicBlock::Create(getGlobalContext(),
                                                         "wrapperExit",
                                                         wrapper);

            // Entry block sets up call frame and arguments, then calls funcName
            // Exit block has a valid ID and returns what funcName returned
            IRBuilder<> builder(wrapperEntry);
            Value* ret = builder.CreateCall(funcName);

            builder.SetInsertPoint(wrapperExit);
            //TODO: insert ID here
            builder.CreateRet(ret);

        }
        
        /**
         * @brief initializes CFILowering object by initializing cfi
         * intrinsic functions and creating the abort function
         *
         * @arg M - module
         */
        CFILowering::CFILowering(Module &M)
        {
            mod = &M;
            cfiInsertID = createCfiFunc(CFI_INSERT_INTRINSIC);
            cfiCheckTarget = createCfiFunc(CFI_CHECK_TAR_INTRINSIC);
            cfiCheckReturn = createCfiFunc(CFI_CHECK_RET_INTRINSIC);
            createAbort();
        }
        
        /**
         * @brief Inserts IDs into their respective sites
         *
         * @arg instrIDs - map of transfer targets to their IDs
         * @arg isRetTarget - flag to indicate if map is of ret targets
         * to IDs or jump targets to IDs
         *
         * @return void
         */
        void CFILowering::insertIDs(InstIDMap instrIDs, bool isRetTarget)
        {
            //iterate through target ID map 
            InstIDMap::iterator IB, IE;
            for (IB = instrIDs.begin(), IE = instrIDs.end();
                 IB != IE; IB++)
            {
                llvm::IRBuilder<> builder(IB->first->getParent());
                Value *ID = llvm::ConstantInt::get(builder.getInt32Ty(),
                                                   IB->second);

                BasicBlock::iterator II(IB->first);
                
                //ret targets are call sites, so insert ID after target
                //jump targets are basic block beginnings, so insert ID before
                if(isRetTarget)
                    II++;

                builder.SetInsertPoint(II);
                builder.CreateCall(cfiInsertID, ID);
            }
        }

        /**
         * @brief Inserts checks into their respective sites
         *
         * @arg targetCheckIDs - map of transfer sites to their target
         * ID (or IDs for whitelisting policy)
         *
         * @return void
         */
        void CFILowering::insertChecks(InstIDSetMap targetCheckIDs)
        {
            //iterate through transfer site ID map
            InstIDSetMap::iterator IB, IE;
            for (IB = targetCheckIDs.begin(), IE = targetCheckIDs.end();
                 IB != IE; IB++)
            {
                Instruction* transferInst = IB->first;
                std::set<int>::iterator setB, setE;
                for(setB = IB->second.begin(), setE = IB->second.end();
                    setB != setE; setB++)
                {
                    int intID = *setB;
                    llvm::IRBuilder<> builder(transferInst->getParent());
                    Value *ID = llvm::ConstantInt::get(builder.getInt32Ty(), 
                                                       intID);

                    BasicBlock::iterator II(transferInst);

                    //insert before current instruction
                    builder.SetInsertPoint(II);
                    if (dyn_cast<ReturnInst>(transferInst))
                        builder.CreateCall(cfiCheckReturn, ID);
                    else
                        builder.CreateCall(cfiCheckTarget, ID);
                }
            }
        }
        
        /********** Debug Functions **********/

	/**
         * @brief prints out the destination map
         * 
         * @arg instDestMap - map of transfer sites to their targets
         * @arg tag - name of the map to print
         *
         * @return void
         */
        void print_dest_map(InstDestMap instDestMap, std::string tag)
        {
            errs() << tag << "\n";
            
            InstDestMap::iterator DB, DE;
            for (DB = instDestMap.begin(), DE = instDestMap.end(); 
                 DB != DE; DB++)
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

        /**
         * @brief prints out the target ID map
         * 
         * @arg transferIDs - map of transfer targets to their IDs
         * @arg tag - name of the map to print
         *
         * @return void
         */
        void print_ID_maps(InstIDMap targetIDs, std::string tag)
        {
            errs() << "\n" << tag << "\n";
            
            InstIDMap::iterator IB, IE;
            for (IB = targetIDs.begin(), IE = targetIDs.end();
                 IB != IE; IB++)
            {
                errs() << "\tTarget Instr: ";
                IB->first->dump();
                errs() << "\t\tID = " << IB->second << "\n";
            }
        }

        /**
         * @brief prints out the trasnfer site ID map
         * 
         * @arg targetCheckIDs - map of transfer sites to their IDs
         * @arg tag - name of the map to print
         *
         * @return void
         */
        void print_ID_check_maps(InstIDSetMap targetCheckIDs, std::string tag)
        {
            errs() << "\n" << tag << "\n";

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
}
