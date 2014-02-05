//===- Test.cpp ----------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements... TODO
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "test_pass"
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
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
      return false;
    }
  };
}

char Test::ID = 0;
static RegisterPass<Test> X("test", "Test Pass for CFI");
