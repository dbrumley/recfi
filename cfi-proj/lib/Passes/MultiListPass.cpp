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
        mod = &M;
        debug = debug_flag;
        return;
    }
    void MultiListPass::generateDestIDs()
    {
        InstIDMap idMap;

        InstSet visitedSet;
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
                visitedSet.insert(inst);
            }
        }
        //generate ID for each set in setList, then add each Instr
        //and their ID to idMap
        InstSet::iterator LB, LE;
        for (LB = visitedSet.begin(), LE = visitedSet.end(); LB != LE; LB++)
        {
            int ID = rand() % MAX;
            Instruction* K = *LB;
            idMap[K] = ID;
        }
    }
    std::string MultiListPass::getStats() {return "stats: list";}
}
