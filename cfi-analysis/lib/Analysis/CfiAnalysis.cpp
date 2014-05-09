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
#include "cfi/TwoIDPass.h"
#include "cfi/MultiMergePass.h"
#include "cfi/MultiListPass.h"

using namespace llvm;
using namespace cfi;

namespace {
    
    //Command-line flag for the level of CFI precision
    cl::opt<CfiLevel> PrecisionLevel(cl::Required, 
                                     cl::desc("CFI precision level"),
                                     cl::values(clEnumValN(TwoID, "two", "Two-Class CFI"),
                                                clEnumValN(MultiMerge, "merge", "Multi-Class CFI"),
                                                clEnumValN(MultiList, "list", "Multi-Class CFI with Whitelisting"),
                                                clEnumValEnd));

    //output file name
    cl::opt<std::string> OutputFilename("cso", 
                                        cl::desc("Specify output filename"), 
                                        cl::value_desc("filename"), 
                                        cl::init("cfistats.txt"));

    
    //Command-line flag for printing precision statistics
    cl::opt<bool> PrintPrecStats("cfi-stats", 
                                 cl::desc("Print precision statistics"));

    
    //Command-line flag for printing debug info
    cl::opt<bool> Debug("cfi-debug", 
                        cl::desc("Useful for debugging"));

    /**
     * @brief CfiInstrumentation - module pass on the llvm IR that
     * inserts cfi related information as llvm intrinsic functions
     */
    struct CfiInstrumentation : public ModulePass 
    {
        static char ID;
        CfiInstrumentation() : ModulePass(ID) {}

        /**
         * @brief adds DSA pass if using Multi-Class CFI policies
         *
         * @arg AU - used by LLVM
         * 
         * @return void
         */
        virtual void getAnalysisUsage(AnalysisUsage &AU) const 
        {
            assert(PrecisionLevel == TwoID || 
                   PrecisionLevel == MultiMerge || 
                   PrecisionLevel == MultiList);

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
         * @brief instruments the IR code based on the selected CFI
         * policy. Prints debug information and generates statistic
         * information if corresponding flags are set.
         *
         * @arg M - module reference
         * 
         * @return true if success, false otherwise
         */
        virtual bool runOnModule(Module &M) 
        {  
            if (Debug)
            {
                errs() << "\n/======================================/\n";
                errs() << "Running CFI Pass: " <<
                    "Precision=" << PrecisionLevel << ", " <<
                    "Stats=" << PrintPrecStats << ", " <<
                    "Debug=" << Debug << "\n\n";
            }

            //seed random function with current time
            srand(time(NULL));

            assert(PrecisionLevel == TwoID || 
                   PrecisionLevel == MultiMerge || 
                   PrecisionLevel == MultiList);

            ICfiPass *pass;
            CTF *ctf = NULL;

            if (Debug)
                errs() << "Creating pass.\n";

            //select CFI pass to use based on user input
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

            if (Debug)
                errs() << "Finding targets..\n";
            pass->findAllTargets(*ctf);

            if (Debug)
                errs() << "generating IDs..\n";
            pass->generateDestIDs();

            if (Debug)
                errs() << "generating Check IDs..\n";
            pass->generateCheckIDs();

            if (Debug)
                errs() << "Lowering...\n";
            pass->lowerChecksAndIDs();

            if(Debug)
                pass->print();

            //print statistics into given output file
            if (PrintPrecStats) 
            {
                std::ofstream myfile;
                myfile.open (OutputFilename.c_str(), std::ios::out);
                myfile << pass->getStats();
                myfile.close();
            }

            if (Debug)
                errs() << "\n/======================================/\n";

            return true;
        }
    };
}

char CfiInstrumentation::ID = 0;
static RegisterPass<CfiInstrumentation> X("cfi", "CFI instrumentation pass");
