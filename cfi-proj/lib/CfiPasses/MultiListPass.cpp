
#include "cfi/ICfiPass.h"
#include "cfi/MultiListPass.h"
/*
 * TODO: Comments
 */

using namespace llvm;

namespace cfi {

    MultiListPass::MultiListPass(Module &M, bool debug) {return;}
    void MultiListPass::findAllTargets() {return;}
    void MultiListPass::generateDestIDs() {return;}
    void MultiListPass::generateCheckIDs() {return;}
    void MultiListPass::lowerChecksAndIDs() {return;}
    std::string MultiListPass::getStats() {return "stats: list";}
}
