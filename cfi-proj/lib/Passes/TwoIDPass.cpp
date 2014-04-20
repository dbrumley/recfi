
#include "cfi/ICfiPass.h"
#include "cfi/TwoIDPass.h"
/*
 * TODO: Comments
 *  This pass is intended to to instrument code with checks such that: 
 *  1. every icall/ibr site can target every potential icall/ibr dest
 *  2. every ret site can target every potential ret dest
 */

using namespace llvm;

namespace cfi {
    TwoIDPass::TwoIDPass(Module &M, bool debug_flag) 
    {
        mod = &M;
        debug = debug_flag;
        return;
    }

    /*
     * Populate jmpSites, jmpTars, retSites, retTars
     */
    void TwoIDPass::findAllTargets(CTF &ctf)
    {
        Module::iterator MB, ME;
        for (MB = mod->begin(), ME = mod->end(); MB != ME; MB++)
        {
            Function *F = &*MB;
            //errs().write_escaped(F->getName()) << '\n';
            //for all basic blocks in function
            Function::iterator FB, FE;
            for (FB = F->begin(), FE = F->end(); FB != FE; FB++)
            {
                BasicBlock::iterator BB, BE;
                for(BB = FB->begin(), BE = FB->end(); BB != BE; BB++)
                {
                    Instruction *I = &*BB;

                    //FOUND: CALLSITE
                    if (CallInst* callInst = dyn_cast<CallInst>(I))
                    {
                        Function *calledFunc = callInst->getCalledFunction();
                        //FOUND: ICALL
                        if (calledFunc == NULL)
                        {
                            jmpSites.insert(I);
                        }
                        else if (calledFunc->isIntrinsic())
                        {
                            continue;
                        }
                        //FOUND: RETURN SITE (call or icall)
                        retTars.insert(I);
                    }
                    //FOUND: IBR SITE
                    else if (dyn_cast<IndirectBrInst>(I))
                    {
                        jmpSites.insert(I);
                    }
                    //FOUND: RET SITE
                    else if (dyn_cast<ReturnInst>(I))
                    {
                        if (F->getName() != "main")
                        {
                            retSites.insert(I);
                        }
                    }
                }
            }

            if (F->isDeclaration())
                continue;

            //find all indirect target blocks, including entry block
            BBSet indTargets = findIndTargets(*F);

            //for all targets in indTargets, insert targetID at beginning
            //of block
            BBSet::iterator BB, BE;
            for (BB = indTargets.begin(), BE = indTargets.end();
                    BB != BE; BB++)
            {
                BasicBlock::iterator II = (*BB)->begin();
                jmpTars.insert(II);
            }
        }
    }

    BBSet TwoIDPass::findIndTargets(Function &F)
    {
        BBSet indTargets;
        if (F.getName() != "main")
            indTargets.insert(&F.getEntryBlock());

        //for all basic blocks in function
        Function::iterator FB, FE;
        for (FB = F.begin(), FE = F.end(); FB != FE; FB++)
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
                        indTargets.insert(IBI->getSuccessor(j));
                    }
                }
            }
        }
        return indTargets;
    }

    void TwoIDPass::generateDestIDs() 
    {
        InstSet::iterator IB, IE;
        
        jmpID = rand() % MAX;
        for (IB = jmpTars.begin(), IE = jmpTars.end(); IB != IE; IB++)
        {
            Instruction* K = *IB;
            idMap[K] = jmpID;
        }

        do{retID = rand() % MAX;} while (retID == jmpID); //ensure the two IDs are unique
        for (IB = retTars.begin(), IE = retTars.end(); IB != IE; IB++)
        {
            Instruction* K = *IB;
            idMap[K] = retID;
        }
    }

    void TwoIDPass::generateCheckIDs() 
    {
        InstSet::iterator IB, IE;
        
        jmpID = rand() % MAX;
        for (IB = jmpSites.begin(), IE = jmpSites.end(); IB != IE; IB++)
        {
            Instruction* K = *IB;
            std::set<int> *idset = &checkMap[K];
            if( idset->find(jmpID) != idset->end() ) // idset.contains(ID)
                continue;
            else
                idset->insert(jmpID);
        }

        do{retID = rand() % MAX;} while (retID == jmpID); //ensure the two IDs are unique
        for (IB = retSites.begin(), IE = retSites.end(); IB != IE; IB++)
        {
            Instruction* K = *IB;
            std::set<int> *idset = &checkMap[K];
            if( idset->find(retID) != idset->end() ) // idset.contains(ID)
                continue;
            else
                idset->insert(retID);
        }
    }

    void TwoIDPass::lowerChecksAndIDs() 
    {
        CFILowering cfil = CFILowering(*mod);
        cfil.insertChecks(checkMap); //checkamp 
        cfil.insertIDs(idMap);
    }
    std::string TwoIDPass::getStats() {return "stats: two-id";}
}
