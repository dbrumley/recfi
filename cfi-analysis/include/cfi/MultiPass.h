//===- MultiPass.h - header file for MultiPass.cpp  -----------------------===//
//
// Contains function declarations for MultiPass.cpp, used by both
// Multi-Class policies
//
//===----------------------------------------------------------------------===//

#ifndef CFI_MULTIPASS
#define CFI_MULTIPASS

#include "ICfiPass.h"
#include "CfiUtil.h"

namespace cfi {

    class MultiPass : public ICfiPass
    {
        protected:
            //current module
            Module* mod;

            //maps of transfer sites to transfer targets,
            //or destinations
            InstDestMap jmpDestMap;
            InstDestMap retDestMap;
        
            //maps of transfer sites to merged transfer
            //targets
            InstDestMap jmpMergedMap;
	    InstDestMap retMergedMap;

            //maps of transfer targets to IDs
	    InstIDMap jmpIdMap;
	    InstIDMap retIdMap;

            //maps of transfer sites to IDs to check against
	    InstIDSetMap jmpCheckMap;
	    InstIDSetMap retCheckMap;

            //maps used for statistics
	    std::map<int, int> retIdCounts;
	    std::map<int, int> jmpIdCounts;

	    void genCheckIds(InstDestMap &destMap, 
                             InstIDMap &idMap, 
                             InstIDSetMap &checkMap );

	    virtual void genIDs(InstDestMap &destMap, 
                                InstIDMap &idMap, 
                                std::map<int,int> &idCounts, 
                                InstDestMap &mergedMap){} 

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
