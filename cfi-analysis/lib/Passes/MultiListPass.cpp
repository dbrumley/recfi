//=== MultiListPass.cpp - Implementation of Multi-Class CFI with Whitelisting policy ===//
//
// This pass instruments LLVM IR with the Multi-Class CFI with Whitelisting policy. It 
// extends MultiPass and uses a whitelist to represent each target. Overlapping
// target sets are not merged.
//
//===--------------------------------------------------------------------------------===//

#include "cfi/MultiListPass.h"

using namespace llvm;

namespace cfi {

    /**
     * @brief Initializes the MultiListPass using the superclass
     * MultiPass's constructor
     *
     * @arg M - current module
     */
    MultiListPass::MultiListPass(Module &M) : MultiPass(M){}

    /**
     * @brief Generate a unique ID for each target, populates 
     * jmpIdMap, retIdMap, jmpMergedMap, and retMergedMap
     *
     * @return void
     */
    void MultiListPass::generateDestIDs()
    {
        genIDs(jmpDestMap, jmpIdMap, jmpIdCounts, jmpMergedMap);
        genIDs(retDestMap, retIdMap, retIdCounts, retMergedMap);
    }

    /**
     * @brief Generates a unique ID for each target given
     * a map of transfer sites to transfer targets
     *
     * @arg destMap - map of transfer sites to transfer targets
     * @arg idMap - map of transfer targets to IDs, to be populated
     * @arg idCounts - map of IDs to the number of targets it
     * represents, used for statistics. To be populated
     * @arg mergedMap - map of transfer sites to transfer targets,
     * if merged. For this pass, it is the same as destMap
     *
     * @return void
     */
    void MultiListPass::genIDs(InstDestMap &destMap, 
                               InstIDMap &idMap, 
                               std::map<int,int> &idCounts, 
                               InstDestMap &mergedMap)
    { 
        //set of all targets
        InstSet targetSet;

        InstDestMap::iterator MB, ME;
        //iterate over transfer sites 
        for (MB = destMap.begin(), ME = destMap.end(); MB != ME; MB++)
        {
            Instruction* I = MB->first;
            InstSet mset = MB->second;
            mergedMap[I] = mset;
            InstSet::iterator LB, LE;
            //iterate over transfer targets and add them to targetSet
            for (LB = mset.begin(), LE = mset.end(); LB != LE; LB++)
            {
                Instruction *inst = *LB;
                targetSet.insert(inst);
            }
        }
        
        //assign each target in targetSet a unique ID and add to idMap
        InstSet::iterator LB, LE;
        for (LB = targetSet.begin(), LE = targetSet.end(); LB != LE; LB++)
        {
            int ID = rand() % MAX;
            Instruction* K = *LB;
            idMap[K] = ID;
            idCounts[ID] = 1;
        }
    }
}
