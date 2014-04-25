/*
 * TODO: Comments
 */

#include "cfi/MultiListPass.h"

#include "dsa/CallTargets.h"
#include "dsa/DSGraph.h"
#include "dsa/DSCallGraph.h"

using namespace llvm;

namespace cfi {

    MultiListPass::MultiListPass(Module &M, bool debug_flag) : MultiPass(M, debug_flag)
    {
    }

    /*
     * Generate a unique ID for each target
     */
    void MultiListPass::generateDestIDs()
    {
        genIDs(jmpDestMap, jmpIdMap, jmpIdCounts);
        genIDs(retDestMap, retIdMap, retIdCounts);
    }


    void MultiListPass::genIDs(InstDestMap &destMap, InstIDMap &idMap, std::map<int,int> &idCounts)
    { 
        InstSet targetSet;
        InstDestMap::iterator MB, ME;
        /* create a set of target instructions */
        for (MB = destMap.begin(), ME = destMap.end(); MB != ME; MB++)
        {
            InstSet mset = MB->second;
            InstSet::iterator LB, LE;
            /* for each target of this callsite, add to set */
            for (LB = mset.begin(), LE = mset.end(); LB != LE; LB++)
            {
                Instruction *inst = *LB;
                targetSet.insert(inst);
            }
        }
        
        //generate ID for each set in setList, then add each Instr
        //and their ID to idMap
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
