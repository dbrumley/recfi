//===- CfiPass.cpp - inserts CFI checks based on control flow graph ----===//
//
// This file inserts IDs and checks for a CFI implementation based on the
// control flow graphs and the call graph of a module.
//
// TODO: Insert Comments
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "cfi"

#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/CommandLine.h"
#include "dsa/DSGraph.h"
#include "dsa/CallTargets.h"
#include "dsa/DSCallGraph.h"
#include "cfi/CfiUtil.h"
#include "cfi/TwoIDPass.h"
#include "cfi/MultiMergePass.h"
#include "cfi/MultiListPass.h"

using namespace llvm;
using namespace cfi;

namespace {
    
    /*
     * Command-line flag for the level of CFI precision
     */
    cl::opt<CfiLevel> PrecisionLevel(cl::Required, cl::desc("Choose level of CFI precision:"),
            cl::values(
                clEnumValN(TwoID, "two", "Abadi's basic two-id CFI"),
                clEnumValN(MultiMerge, "merge", "Abadi's traditional multi-id CFI, with merged destination sets"),
                clEnumValN(MultiList, "list", "Abadi's multi-id CFI, without destination set merging (whitelisting)"),
                clEnumValEnd));

    /*
     * Command-line flag for printing precision statistics
     */
    cl::opt<bool> PrintPrecStats("s", cl::desc("Print precision statistics"));

    /*
     * Command-line flag for printing debug
     */
    cl::opt<bool> Debug("d", cl::desc("Useful for debugging"));

    /**
     * @brief CfiPass - module pass on the llvm IR that inserts cfi
     * related information as llvm intrinsic functions
     */
    struct CfiInstrumentation : public ModulePass {
        static char ID;
        CfiInstrumentation() : ModulePass(ID) {}

        virtual void getAnalysisUsage(AnalysisUsage &AU) const {
            AU.addRequired<CTF>();
        }

        /**
         * @brief find all indirect call and branch targets, then insert
         * IDs and checks at corresponding locations for a context sensitive
         * CFI implementation
         *
         * @arg M - module reference
         */
        virtual bool runOnModule(Module &M) 
        {  
            errs() << "/========================================================================/\n\n";
            errs() << "Running CFI Pass: \
                Precision=" << PrecisionLevel << ", \
                Stats=" << PrintPrecStats << ", \
                Debug=" << Debug << "\n";

            srand(time(NULL));

            //cfi::ICfiPass *pass;

            assert(PrecisionLevel == TwoID || PrecisionLevel == MultiMerge || PrecisionLevel == MultiList);

            ICfiPass *pass;
            CTF *ctf;
            errs() << "Creating pass.\n";
            switch(PrecisionLevel)
            {
                case TwoID:
                    ctf = NULL;
                    pass = new TwoIDPass(M, Debug);
                    break;
                case MultiMerge:
                    ctf = &getAnalysis<CTF>();
                    pass = new MultiMergePass(M, Debug);
                    break;
                case MultiList:
                    ctf = &getAnalysis<CTF>();
                    pass = new MultiListPass(M, Debug);
                    break;
            }
            errs() << "Creating pass....Done\n";
            
            errs() << "Finding targets..\n";
            pass->findAllTargets(*ctf);
            errs() << "generating IDs..\n";
            pass->generateDestIDs();
            errs() << "generating Check IDs..\n";
            pass->generateCheckIDs();
            errs() << "Lowering...\n";
            pass->lowerChecksAndIDs();

            if( PrintPrecStats ) 
                errs() << pass->getStats() << "\n";
            errs() << "/========================================================================/\n\n";
            return true;
        }
    };
}

char CfiInstrumentation::ID = 0;
static RegisterPass<CfiInstrumentation> X("cfi", "CFI instrumentation pass");
