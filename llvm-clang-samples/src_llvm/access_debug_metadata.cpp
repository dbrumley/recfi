//------------------------------------------------------------------------------
// This is currently ad-hoc
//
// Eli Bendersky (eliben@gmail.com)
// This code is in the public domain
//------------------------------------------------------------------------------
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Pass.h"
#include "llvm/PassManager.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/SourceMgr.h"

using namespace llvm;

int main(int argc, char **argv) {
  if (argc < 2) {
    errs() << "Usage: " << argv[0] << " <IR file>\n";
    return 1;
  }

  // Parse the input LLVM IR file into a module.
  SMDiagnostic Err;
  Module *Mod = ParseIRFile(argv[1], Err, getGlobalContext());
  if (!Mod) {
    Err.print(argv[0], errs());
    return 1;
  }

  // Go over all named mdnodes in the module
  for (Module::named_metadata_iterator I = Mod->named_metadata_begin(),
       E = Mod->named_metadata_end(); I != E; ++I) {
    outs() << "Found MDNode:\n";
    I->dump();

    for (unsigned i = 0, e = I->getNumOperands(); i != e; ++i) {
      Value *Op = I->getOperand(i);
      if (MDNode *N = dyn_cast<MDNode>(Op)) {
        outs() << "  Has MDNode operand:\n  ";
        N->dump();

        for (Value::use_iterator UI = N->use_begin(), UE = N->use_end();
             UI != UE; ++UI) {
          outs() << "   the operand has a user:\n    ";
          outs() << *UI << "\n";
        }
      }
    }
  }

  return 0;
}
