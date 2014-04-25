#include "MultiPass.h"

using namespace llvm;

namespace cfi {

class MultiListPass : public MultiPass 
{
    public: 
        MultiListPass(Module &M, bool debug_flag);
        void generateDestIDs();
};
}
