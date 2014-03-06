//===- InsertIDsAndChecks.h - header file for InsertIDsAndChecks.cpp ------===//
//
// Contains function declarations for inserting IDs and checks into llvm IR
//
//===----------------------------------------------------------------------===//

#include "llvm/IR/IRBuilder.h"

using namespace llvm;

namespace cfilowering{
    class CFILowering {
        
        //type definitions for creating a function
        typedef std::vector<std::string> ArgNames;
        typedef std::vector<llvm::Type*> ArgTypes;
        typedef std::vector<llvm::Value*> ArgVals;
        
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
        
        void createCfiid(Module &M);

    public:
        CFILowering(Module &M);
        Function *get_cfiid();
    };
}
