//===- CFILowering.cpp - Functions for lowering id and check inserting ----===//
//
// Contains function declarations for inserting IDs and checks into llvm IR
//
//===----------------------------------------------------------------------===//

#include "llvm/IR/IRBuilder.h"

using namespace llvm;

namespace cfi{
    class CFILowering {
        typedef std::vector<std::string> ArgNames;
        typedef std::vector<llvm::Type*> ArgTypes;
        typedef std::vector<llvm::Value*> ArgVals;
        
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
        
        void createCfiid(Module &M)
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
            
            //call void @llvm.arm.cfiid(i32 dest_id)
            cfiid_intrinsic = createFunction(M,
                                             retType,
                                             argTypes,
                                             argNames,
                                             "llvm.arm.cfiid",
                                             llvm::Function::ExternalLinkage,
                                             true,
                                             false);
            
            return cfiid_intrinsic;
        }
        
    public:
        CFILowering(Module &M)
        {
            createCfiid();
        }
        
        Function *get_cfiid()
        {
            return cfiid_intrinsic;
        }
    };
}
