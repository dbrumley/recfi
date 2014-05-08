#ifndef CFI_MULTIMERGEPASS
#define CFI_MULTIMERGEPASS
#include "MultiPass.h"


namespace cfi {

class MultiMergePass : public MultiPass 
{
    private:
        void genIDs(InstDestMap &destMap, InstIDMap &idMap, std::map<int,int> &idCounts, InstDestMap &mergedMap);
    public: 
        MultiMergePass(Module &M);
        void generateDestIDs();
};
}
#endif
