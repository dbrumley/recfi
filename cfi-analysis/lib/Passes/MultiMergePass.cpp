//=== MultiMergePass.cpp - Implementation of Multi-Class CFI policy -----------------===//
//
// This pass instruments LLVM IR with the Multi-Class CFI policy. It 
// extends MultiPass. Overlapping target sets are merged, and each target
// set is assigned a unique ID representing the entire set.
//
//===--------------------------------------------------------------------------------===//

#include "cfi/MultiMergePass.h"

using namespace llvm;

namespace cfi {

    /**
     * @brief Initializes the MultiMergePass using the superclass
     * MultiPass's constructor
     *
     * @arg M - current module
     */
    MultiMergePass::MultiMergePass(Module &M) : MultiPass(M){}

    /**
     * @brief Generate a unique ID for each target set, populates 
     * jmpIdMap, retIdMap, jmpMergedMap, and retMergedMap
     *
     * @return void
     */
    void MultiMergePass::generateDestIDs()
    {
        errs() << "multimerge gendestids\n";
        genIDs(jmpDestMap, jmpIdMap, jmpIdCounts, jmpMergedMap);
        genIDs(retDestMap, retIdMap, retIdCounts, retMergedMap);
    }

    /**
     * @brief Generates a unique ID for each target set given
     * a map of transfer sites to transfer targets
     *
     * @arg destMap - map of transfer sites to transfer targets
     * @arg idMap - map of transfer targets to IDs, to be populated
     * @arg idCounts - map of IDs to the number of targets it
     * represents, used for statistics. To be populated
     * @arg mergedMap - map of transfer sites to a merged set of 
     * transfer targets
     *
     * @return void
     */
    void MultiMergePass::genIDs(InstDestMap& destMap, 
                                InstIDMap& idMap, 
                                std::map<int,int> &idCounts, 
                                InstDestMap& mergedMap)
    {
        std::list<InstSet> setList;

        //merge target sets
        InstDestMap::iterator MB, ME;
        //iterate over transfer sites
        for (MB = destMap.begin(), ME = destMap.end(); MB != ME; MB++)
        {
            //get the target set for current transfer site
            Instruction* I = MB->first;
            InstSet mset = MB->second;

            //if setList is empty, add target set to setList
            if (setList.size() == 0)
            {
                setList.push_back(mset);
                mergedMap[I] = mset;
                continue;
            }

            //represents intersection of two sets 
            InstSet intersect;

            std::list<InstSet>::iterator LB, LE;
            //iterate over target sets already in setList
            for (LB = setList.begin(), LE = setList.end(); LB != LE; LB++)
            {
                InstSet lset = *LB;

                //detect set intersection and store intersection
                //in intersect
                set_intersection(mset.begin(), mset.end(),
                                 lset.begin(), lset.end(),
                                 std::inserter(intersect,
                                               intersect.begin()));

                //if intersect is greater than 0, meaning current target
                //set overlaps with another target set, then merge the sets
                if (intersect.size() > 0)
                {
                    lset.insert(mset.begin(), mset.end());
                    mergedMap[I] = lset;
                    break;
                }
            }

            //if no intersections found, add current target set unmerged
            if (intersect.size() == 0)
            {
                setList.push_back(mset);
                mergedMap[I] = mset;
            }
        }

        //generate ID for each set in setList, then add each target 
        //and their ID to idMap
        std::list<InstSet>::iterator LB, LE;
        for (LB = setList.begin(), LE = setList.end(); LB != LE; LB++)
        {
            InstSet lset = *LB;
            int ID = rand() % MAX;

            idCounts[ID] = 0;

            InstSet::iterator SB, SE;
            for (SB = lset.begin(), SE = lset.end(); SB != SE; SB++)
            {
                Instruction* K = *SB;
                idMap[K] = ID;
                idCounts[ID]++;
            }
        }
    }
}
