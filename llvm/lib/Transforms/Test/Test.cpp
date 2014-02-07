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
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"

using namespace llvm;

STATISTIC(TestCounter, "Counts number of functions greeted");

namespace {
    // Test - The first implementation, without getAnalysisUsage.
    struct Test : public FunctionPass {
        static char ID; // Pass identification, replacement for typeid
        Test() : FunctionPass(ID) {}

        virtual bool runOnFunction(Function &F) {
            ++TestCounter;
            errs() << "Test: ";
            errs().write_escaped(F.getName()) << '\n';
            for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I)
            {
                if (CallInst* callInst = dyn_cast<CallInst>(&*I)) {
                    // We know we've encountered a call instruction, so we
                    // need to determine if it's a call to the
                    // function pointed to by m_func or not.
                    errs() << "\tCall: " << callInst->getCalledFunction() << '\n';
                }
                if (BranchInst* brInst = dyn_cast<BranchInst>(&*I)) {
                    //Each branch can go to a number of sucessors
                    unsigned numTarget = brInst->getNumSuccessors();
                    errs() << "\tBranch: " << brInst->getCondition() << '\n';
                    for(unsigned i = 0; i < numTarget; i++)
                    {
                        errs() << "\t\t" << i << " " << brInst->getSuccessor(i) << '\n';
                    }               
                }
                if (ReturnInst* retInst = dyn_cast<ReturnInst>(&*I)) {
                    errs() << "\tRet: " << retInst->getReturnValue() << '\n';
                }
            }
           return false;
        }
        
        virtual bool runOnBasicBlock(BasicBlock &B) {
            for (BasicBlock::iterator I = B.begin(), E = B.end(); I != E; ++I)
            {
                runOnInstruction(*I);
            }
           return false;
        }
        
        virtual bool runOnInstruction(Instruction &I) {
            return false;
        }
    };
}

char Test::ID = 0;
static RegisterPass<Test> X("test", "Test Pass for CFI");
