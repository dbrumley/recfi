//===- CFILowering.h - header file for InsertIDsAndChecks.cpp -------------===//
//
// Contains function declarations for inserting IDs and checks into llvm IR
//
//===----------------------------------------------------------------------===//

#ifndef CMU_CFI
#define CMU_CFI

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"

using namespace llvm;

namespace cfi{
    class CFILowering {/*
        
        //type definitions for creating a function
        typedef std::vector<std::string> ArgNames;
        typedef std::vector<llvm::Type*> ArgTypes;
        typedef std::vector<llvm::Value*> ArgVals;
        
        //cfi ID insert intrinsic
        Function *cfiid_intrinsic;
        
        //create a function
        Function *createFunction(llvm::Module &module,
                                 llvm::Type *retType,
                                 const ArgTypes &theArgTypes,
                                 const ArgNames &theArgNames,
                                 const std::string &functName,
                                 llvm::GlobalValue::LinkageTypes linkage,
                                 bool declarationOnly,
                                 bool isVarArg);
        
        //create cfiid_intrinsic
        void createCfiid(Module &M);*/

    public:
        CFILowering(Module &M);
        Function *get_cfiid_intrinsic();
    };
}

#endif
