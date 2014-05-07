#include "cfi/MultiMergePass.h"
/*
 * TODO: Comments
 */

using namespace llvm;

namespace cfi {

    MultiMergePass::MultiMergePass(Module &M, bool debug_flag) : MultiPass(M, debug_flag)
    {
    }
    void MultiMergePass::generateDestIDs()
    {
        errs() << "multimerge gendestids\n";
        genIDs(jmpDestMap, jmpIdMap, jmpIdCounts, jmpMergedMap);
        genIDs(retDestMap, retIdMap, retIdCounts, retMergedMap);
    }

    void MultiMergePass::genIDs(InstDestMap& destMap, InstIDMap& idMap, std::map<int,int> &idCounts, InstDestMap& mergedMap)
    {
        std::list<InstSet> setList;

        //merge target destination sets
        InstDestMap::iterator MB, ME;
        /* for each transfer instruction */
        for (MB = destMap.begin(), ME = destMap.end(); MB != ME; MB++)
        {
            /* get the destination set */
            Instruction* I = MB->first;
            InstSet mset = MB->second;

            //add first set to setList
            if (setList.size() == 0)
            {
                setList.push_back(mset);
                mergedMap[I] = mset;
                continue;
            }

            /* merge overlapping destination sets */
            InstSet intersect;

            std::list<InstSet>::iterator LB, LE;
            /* for each existing set */
            for (LB = setList.begin(), LE = setList.end(); LB != LE; LB++)
            {
                InstSet lset = *LB;

                /* detect set intersection */
                set_intersection(mset.begin(), mset.end(),
                        lset.begin(), lset.end(),
                        std::inserter(intersect,
                            intersect.begin()));
                /* if this set overlaps with an existing set */
                if (intersect.size() > 0)
                {
                    /* merge the two sets */
                    lset.insert(mset.begin(), mset.end());
                    mergedMap[I] = lset;
                    break;
                }
            }

            //if no intersections found, add this as its own set
            if (intersect.size() == 0)
            {
                setList.push_back(mset);
                mergedMap[I] = mset;
            }
        }

        //generate ID for each set in setList, then add each block
        //and their ID to idMap
        std::list<InstSet>::iterator LB, LE;
        /* for each merged set */
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
