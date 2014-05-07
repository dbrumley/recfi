#ifndef CFI_MULTIPASS
#define CFI_MULTIPASS
#include "ICfiPass.h"
#include "CfiUtil.h"


namespace cfi {

class MultiPass : public ICfiPass
{
    protected:
        Module* mod;

        InstDestMap jmpDestMap;
        InstDestMap retDestMap;
        
        InstDestMap jmpMergedMap;
        InstDestMap retMergedMap;

        InstIDMap jmpIdMap;
        InstIDMap retIdMap;
        
        InstIDSetMap jmpCheckMap;
        InstIDSetMap retCheckMap;
        
        std::map<int, int> retIdCounts;
        std::map<int, int> jmpIdCounts;

        void genCheckIds(InstDestMap &destMap, InstIDMap &idMap, InstIDSetMap &checkMap );
        
        virtual void genIDs(InstDestMap &destMap, InstIDMap &idMap, std::map<int,int> &idCounts, InstDestMap &mergedMap){} 

    public: 
        MultiPass(Module &M);
        ~MultiPass();
        void findAllTargets(CTF &ctf);
        virtual void generateDestIDs() {}
        void generateCheckIDs();
        void lowerChecksAndIDs();
        std::string getStats();
        void print();
};
}
#endif
