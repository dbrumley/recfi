//===- CFILowering.cpp - Functions for lowering id and check inserting ----===//
//
// Contains function declarations for inserting IDs and checks into llvm IR
//
//===----------------------------------------------------------------------===//

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "CFILowering.h"

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
         * @brief create cfi_abort function:
         * void abort()
         * {while(1);}
         */
        void CFILowering::createAbort()
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
        
        /**
         * @brief initializes CFILowering object by initializing cfi
         * intrinsic functions
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
         */
        void CFILowering::insertIDs(InstIDMap instrIDs)
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
        void CFILowering::insertChecks(InstIDSetMap targetCheckIDs)
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
        
        CFILogger::CFILogger(const char * filename)
        {
            outStream.open(filename);
        }

        void CFILogger::log(std::string logstr)
        {
            outStream << logstr << "\n";
        }
        
        void CFILogger::endlog()
        {
            outStream.close();
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

}
