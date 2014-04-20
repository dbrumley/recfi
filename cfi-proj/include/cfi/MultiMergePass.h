#include "MultiPass.h"


using namespace llvm;

namespace cfi {

class MultiMergePass : public MultiPass 
{
    public: 
        MultiMergePass(Module &M, bool debug_flag);
        void generateDestIDs();
        std::string getStats();
};
}
