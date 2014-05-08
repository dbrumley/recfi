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
    cl::opt<CfiLevel> PrecisionLevel(cl::Required, cl::desc("CFI precision level"),
            cl::values(
                clEnumValN(TwoID, "two", "Abadi's basic two-id CFI"),
                clEnumValN(MultiMerge, "merge", "Abadi's traditional multi-id CFI, with merged destination sets"),
                clEnumValN(MultiList, "list", "Abadi's multi-id CFI, without destination set merging (whitelisting)"),
                clEnumValEnd));

    /*
     *
     */
    cl::opt<std::string> OutputFilename("cso", cl::desc("Specify output filename"), cl::value_desc("filename"), cl::init("cfistats.txt"));

    /*
     * Command-line flag for printing precision statistics
     */
    cl::opt<bool> PrintPrecStats("cfi-stats", cl::desc("Print precision statistics"));

    /*
     * Command-line flag for printing debug
     */
    cl::opt<bool> Debug("cfi-debug", cl::desc("Useful for debugging"));

    /**
     * @brief CfiPass - module pass on the llvm IR that inserts cfi
     * related information as llvm intrinsic functions
     */
    struct CfiInstrumentation : public ModulePass {
        static char ID;
        CfiInstrumentation() : ModulePass(ID) {}

        virtual void getAnalysisUsage(AnalysisUsage &AU) const {
            assert(PrecisionLevel == TwoID || PrecisionLevel == MultiMerge || PrecisionLevel == MultiList);
            switch(PrecisionLevel)
            {
                case TwoID:
                    break;
                case MultiMerge:
                case MultiList:
                    AU.addRequired<CTF>();
                    break;
            }
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
            if( Debug)
                errs() << "\n/========================================================================/\n";
            if( Debug)
                errs() << "Running CFI Pass: " <<
                    "Precision=" << PrecisionLevel << ", " <<
                    "Stats=" << PrintPrecStats << ", " <<
                    "Debug=" << Debug << "\n\n";
            srand(time(NULL));

            assert(PrecisionLevel == TwoID || PrecisionLevel == MultiMerge || PrecisionLevel == MultiList);

            ICfiPass *pass;
            CTF *ctf = NULL;

            if( Debug)
                errs() << "Creating pass.\n";

            switch(PrecisionLevel)
            {
                case MultiMerge:
                    ctf = &getAnalysis<CTF>();
                    pass = new MultiMergePass(M);
                    break;
                case MultiList:
                    ctf = &getAnalysis<CTF>();
                    pass = new MultiListPass(M);
                    break;
		//default case: TwoID
                default:
                    pass = new TwoIDPass(M);
                    break;
            }
            if( Debug)
                errs() << "Creating pass....Done\n";
            if( Debug)
                errs() << "Finding targets..\n";
            pass->findAllTargets(*ctf);
            if( Debug)
                errs() << "generating IDs..\n";
            pass->generateDestIDs();
            if( Debug)
                errs() << "generating Check IDs..\n";
            pass->generateCheckIDs();
            if( Debug)
                errs() << "Lowering...\n";
            pass->lowerChecksAndIDs();
            if(Debug)
                pass->print();
            if( PrintPrecStats ) 
            {
                std::ofstream myfile;
                myfile.open (OutputFilename.c_str(), std::ios::out);
                myfile << pass->getStats();
                myfile.close();
            }
            if( Debug)
                errs() << "/========================================================================/\n\n";
            return true;
        }
    };
}

char CfiInstrumentation::ID = 0;
static RegisterPass<CfiInstrumentation> X("cfi", "CFI instrumentation pass");
