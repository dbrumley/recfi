
#include "cfi/ICfiPass.h"
#include "cfi/TwoIDPass.h"
/*
 * TODO: Comments
 */

using namespace llvm;

namespace cfi {
    TwoIDPass::TwoIDPass(Module &M, bool debug) {return;}
    void TwoIDPass::findAllTargets() {return;}
    void TwoIDPass::generateDestIDs() {return;}
    void TwoIDPass::generateCheckIDs() {return;}
    void TwoIDPass::lowerChecksAndIDs() {return;}
    std::string TwoIDPass::getStats() {return "stats: two-id";}
}
