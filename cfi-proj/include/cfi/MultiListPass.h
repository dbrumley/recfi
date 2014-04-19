#include "ICfiPass.h"


using namespace llvm;

namespace cfi {

class MultiListPass : public ICfiPass
{
    public: 
        MultiListPass(Module &M, bool debug);
        ~MultiListPass();
        void findAllTargets();
        void generateDestIDs();
        void generateCheckIDs();
        void lowerChecksAndIDs();
        std::string getStats();
};
}
