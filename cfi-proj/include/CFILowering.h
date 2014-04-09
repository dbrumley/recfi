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
    class CFILowering {
    
    public:
        /**
         * @brief constructor - creates CFILowering object
         *
         * @arg M - current module
         */
        CFILowering(Module &M);
        
        /**
         * @brief gets the cfiInsertID function pointer
         *
         * @return Function pointer
         */
        Function *getCfiInsertID();
        
        /**
         * @brief gets the cfiCheckTarget function pointer
         *
         * @return Function pointer
         */
        Function *getCfiCheckTarget();
        
        /**
         * @brief gets the cfiCheckReturn function pointer
         *
         * @return Function pointer
         */
        Function *getCfiCheckReturn();
    };
}

#endif
