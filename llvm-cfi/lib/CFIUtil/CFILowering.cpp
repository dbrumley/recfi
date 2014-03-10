//===- CFILowering.cpp - Functions for lowering id and check inserting ----===//
//
// Contains function declarations for inserting IDs and checks into llvm IR
//
//===----------------------------------------------------------------------===//

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"

using namespace llvm;

namespace cfi{
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
        //initialize intrinsic functions
        CFILowering(Module &M)
        {
            cfiInsertID = createCfiFunc("llvm.arm.cfiid", M);
            cfiCheckTarget = createCfiFunc("llvm.arm.cfichecktar", M);
            cfiCheckReturn = createCfiFunc("llvm.arm.cficheckret", M);
        }
        
        Function *getCfiInsertID()
        {
            return cfiInsertID;
        }
        
        Function *getCfiCheckTarget()
        {
            return cfiCheckTarget;
        }
        
        Function *getCfiCheckReturn()
        {
            return cfiCheckReturn;
        }
    };
}
