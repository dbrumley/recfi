//===- CfiAnalysis.cpp - inserts CFI instrumentation based on CFI policy --===//
//
// This file is the implementation of CFI instrumentation code given a
// CFI policy specified by the user.  It is implemented as an LLVM
// optimization pass. 
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "cfi"

#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/CommandLine.h"
#include "dsa/DSGraph.h"
#include "dsa/CallTargets.h"
#include "dsa/DSCallGraph.h"
#include "cfi/CfiUtil.h"
//#include "cfi/TwoIDPass.h"
//#include "cfi/MultiMergePass.h"
//#include "cfi/MultiListPass.h"

using namespace llvm;
using namespace cfi;

namespace {
    
    //Command-line flag for printing debug info
    cl::opt<bool> Debug("cfi-wrapper-debug", 
                        cl::desc("Useful for debugging"));

    /**
     * @brief CfiWrapper - module pass on the llvm IR that
     * adds wrappers around all function pointer arguments (functions
     * that escape to the unhardened universe)
     */
    struct CfiWrapper : public ModulePass 
    {
        static char ID;
        CfiWrapper() : ModulePass(ID) {}

        virtual void getAnalysisUsage(AnalysisUsage &AU) const 
        {

        }

        /**
         * @brief detects fn arg calls and adds wrappers.
         *
         * @arg M - module reference
         * 
         * @return true if success, false otherwise
         */
        virtual bool runOnModule(Module &M) 
        {  
             if (Debug)
                errs() << "Adding function pointer wrappers.\n";

            addFunctionPointerWrappers(&M);

            if (Debug)
                errs() << "\n/======================================/\n";

            return true;
        }
    };
}

char CfiWrapper::ID = 0;
static RegisterPass<CfiWrapper> X("cfi-wrapper", "CFI wrapper pass");
