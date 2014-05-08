#ifndef CFI_MULTILISTPASS
#define CFI_MULTILISTPASS
#include "MultiPass.h"

namespace cfi {

    class MultiListPass : public MultiPass 
    {
        private:
            void genIDs(InstDestMap &destMap, InstIDMap &idMap, std::map<int,int> &idCounts, InstDestMap &mergedMap);
        public: 
            MultiListPass(Module &M);
            void generateDestIDs();
    };
}
#endif
