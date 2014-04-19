#include "ICfiPass.h"


using namespace llvm;

namespace cfi {

class MultiMergePass : public ICfiPass
{
    public: 
        MultiMergePass(Module &M, bool debug);
        ~MultiMergePass();
        void findAllTargets();
        void generateDestIDs();
        void generateCheckIDs();
        void lowerChecksAndIDs();
        std::string getStats();
};
}
