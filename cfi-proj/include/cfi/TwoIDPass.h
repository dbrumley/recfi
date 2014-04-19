#include "llvm/IR/Module.h"
#include "cfi/ICfiPass.h"

using namespace llvm;

namespace cfi {

    class TwoIDPass : public ICfiPass
    {
        public: 
            TwoIDPass(Module &M, bool debug);
            ~TwoIDPass();
            void findAllTargets();
            void generateDestIDs();
            void generateCheckIDs();
            void lowerChecksAndIDs();
            std::string getStats();
    };
}
