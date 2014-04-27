#include "MultiPass.h"


using namespace llvm;

namespace cfi {

class MultiMergePass : public MultiPass 
{
    void genIDs(InstDestMap &destMap, InstIDMap &idMap, std::map<int,int> &idCounts, InstDestMap &mergedMap);
    public: 
        MultiMergePass(Module &M, bool debug_flag);
        void generateDestIDs();
};
}
