/*
 * TODO: Comments
 */

#include "cfi/ICfiPass.h"
#include "cfi/MultiListPass.h"
#include "cfi/CfiUtil.h"

#include "dsa/CallTargets.h"
#include "dsa/DSGraph.h"
#include "dsa/DSCallGraph.h"

using namespace llvm;

namespace cfi {

    MultiPass::MultiPass(Module &M, bool debug_flag) 
    {
        mod = &M;
        debug = debug_flag;
        return;
    }

    void MultiPass::findAllTargets(Module &M, CTF &ctf)
    {
        /*
         * First: find indirect branch targets 
         */
        Module::iterator MB, ME;
        for (MB = mod->begin(), ME = mod->end(); MB != ME; MB++)
        {
            Function *F = &*MB;
            //for all basic blocks in function
            Function::iterator FB, FE;
            for (FB = F->begin(), FE = F->end(); FB != FE; FB++)
            {
                BasicBlock *B = &*FB;

                //check if basic block ends with indirect branch 
                //(TODO add other checks: exceptions, longjumps, trampolines?)
                if (TerminatorInst *TI = B->getTerminator())
                {
                    if (IndirectBrInst *IBI = dyn_cast<IndirectBrInst>(TI))
                    {
                        //add all possible successors to indBrDestMap
                        int n = IBI->getNumSuccessors();
                        for (int j = 0; j < n; j++)
                        {
                            BasicBlock *destBlock = IBI->getSuccessor(j);
                            BasicBlock::iterator destBlockStart = destBlock->begin();
                            Instruction *destInstr = &*destBlockStart;
                            destMap[IBI].insert(destInstr);
                        }
                    }
                }
            }
        }

        /*
         * Second: find call and ret targets 
         */
        //for all call sites
        CallSiteIterator CB, CE;
        for (CB = ctf.cs_begin(), CE = ctf.cs_end(); CB != CE; CB++)
        {
            CallSite cs = *CB;
           Instruction *I = cs.getInstruction();

            //only consider calls that have targets
            if (ctf.begin(cs) != ctf.end(cs))
            {
                //for all call site targets
                CallTargetIterator FB, FE;
                for (FB = ctf.begin(cs), FE = ctf.end(cs); FB != FE; FB++)
                {
                    const Function *F = *FB;

                    if (F->isIntrinsic() || F->isDeclaration() )
                    {
                        //errs() << "Skipping intrinsic || declaration: " << F->getName()  << "\n";
                        continue;
                    }

                    //add indirect call targets to indCallDestMap
                    if (!cs.getCalledFunction())
                    {
                        BasicBlock *destBlock = const_cast<BasicBlock *>
                            (&F->getEntryBlock());
                        BasicBlock::iterator destBlockStart = destBlock->begin();
                        Instruction *destInstr = &*destBlockStart;
                        destMap[I].insert(destInstr);
                    }

                    //Find all returns in this function
                    Function::iterator BB, BE;
                    Function* ncF = const_cast<Function*>(F);
                    for (BB = ncF->begin(), BE = ncF->end(); BB != BE; BB++)
                    {
                        BasicBlock *B = &*BB;

                        //check if basic block ends with return
                        if (TerminatorInst *TI = B->getTerminator())
                        {
                            if (ReturnInst *RI = dyn_cast<ReturnInst>(TI))
                            {
                                destMap[RI].insert(I);
                            }
                        }
                    }

                }
            }
        }
    }

    void MultiPass::generateCheckIDs()
        {
            InstDestMap::iterator MB, ME;
            /* for each callsite */
            for (MB = destMap.begin(), ME = destMap.end(); MB != ME; MB++)
            {
                InstSet::iterator SB, SE;
                /* get each target */
                for (SB = MB->second.begin(), SE = MB->second.end();SB != SE; SB++)
                {
                    Instruction *B = *SB;
                    int ID = idMap[B];

                    //map check site to target set ID
                    std::set<int> *idset = &checkMap[MB->first];
                    if( idset->find(ID) != idset->end() ) // idset.contains(ID)
                        continue;
                    else
                        idset->insert(ID);
                }
            }
        }
    void MultiPass::lowerChecksAndIDs()
    {
        CFILowering cfil = CFILowering(*mod);
        cfil.insertChecks(checkMap);
        cfil.insertIDs(idMap);
    }
}
