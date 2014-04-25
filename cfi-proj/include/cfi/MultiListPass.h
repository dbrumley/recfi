#include "MultiPass.h"

using namespace llvm;

namespace cfi {

class MultiListPass : public MultiPass 
{
    void genIDs(InstDestMap &destMap, InstIDMap &idMap, std::map<int,int> &idCounts);
    public: 
        MultiListPass(Module &M, bool debug_flag);
        void generateDestIDs();
};
}
