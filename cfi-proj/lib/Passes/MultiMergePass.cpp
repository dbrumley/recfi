
#include "cfi/ICfiPass.h"
#include "cfi/MultiMergePass.h"
/*
 * TODO: Comments
 */

using namespace llvm;

namespace cfi {

    MultiMergePass::MultiMergePass(Module &M, bool debug) {return;}
    void MultiMergePass::findAllTargets() {return;}
    void MultiMergePass::generateDestIDs() {return;}
    void MultiMergePass::generateCheckIDs() {return;}
    void MultiMergePass::lowerChecksAndIDs() {return;}
    std::string MultiMergePass::getStats() {return "stats: merge";}
}
