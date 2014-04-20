
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
    TwoIDPass::TwoIDPass(Module &M, bool debug) {return;}


    /*
     * Populate jmpSites, jmpTars, retSites, retTars
     */
    void TwoIDPass::findAllTargets( Module &M, CTF &ctf)
    {
        errs() << "TwoIDPass::findAllTargets\n";
        Module::iterator MB, ME;
        for (MB = M.begin(), ME = M.end(); MB != ME; MB++)
        {
            Function *F = &*MB;
            //errs().write_escaped(F->getName()) << '\n';
            //for all basic blocks in function
            Function::iterator FB, FE;
            for (FB = F->begin(), FE = F->end(); FB != FE; FB++)
            {
                errs() << "\t\tBB: \n";
                BasicBlock::iterator BB, BE;
                for(BB = FB->begin(), BE = FB->end(); BB != BE; BB++)
                {
                    errs() << "word";
                    Instruction *I = &*BB;
                    errs() << "\t\t\tInstr:" << *I << "\n";

                    //FOUND: CALLSITE
                    if (CallInst* callInst = dyn_cast<CallInst>(I))
                    {
                        errs() << "\t\t\t[Callsite]\n";
                        Function *calledFunc = callInst->getCalledFunction();
                        //FOUND: ICALL
                        if (calledFunc == NULL)
                        {
                            errs() << "\t\t\t[ICall]\n";
                            jmpSites.insert(I);
                        }
                        //FOUND: RETURN SITE
                        if (!calledFunc->isIntrinsic())
                        {
                            errs() << "\t\t\t[AsRetSite]\n";
                            retTars.insert(++I);
                            I--;
                        }
                    }
                    //FOUND: IBR SITE
                    else if (dyn_cast<IndirectBrInst>(I))
                    {
                        errs() << "\t\t\t[IBRSite]\n";
                        jmpSites.insert(I);
                    }
                    //FOUND: RET SITE
                    else if (dyn_cast<ReturnInst>(I))
                    {
                        errs() << "\t\t\t[RetSite]\n";
                        if (F->getName() != "main")
                        {
                            retSites.insert(I);
                        }
                    }
                }
            }

            errs() << "\t\t\t[Finding target blocks]\n";
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
        cfil.insertIDs(idMap);
        cfil.insertChecks(checkMap); //checkamp 
        return;
    }
    std::string TwoIDPass::getStats() {return "stats: two-id";}
}
