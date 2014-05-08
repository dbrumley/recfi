#include "ICfiPass.h"
#include "CfiUtil.h"
#ifndef MULTIPASS
#define MULTIPASS


using namespace llvm;

namespace cfi {

class MultiPass : public ICfiPass
{
    protected:
        Module* mod;
        bool debug;

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

    public: 
        MultiPass(Module &M, bool debug_flag);
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
