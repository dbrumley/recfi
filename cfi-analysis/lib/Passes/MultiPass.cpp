//=== MultiPass.cpp - contains functions used by both Multi-Class policies ===//
//
// This file implements ICfiPass and contains functions used by both
// Multi-Class CFI policies, such as generating check IDs for transfer
// sites. IDs for transfer targets will be generated differently for
// each Multi-Class policy. 
//
// Both multi-class policies should follow this rule:
//
// Allowed transfer targets are edges within the program's CFG
//
//===----------------------------------------------------------------------===//

#include "cfi/ICfiPass.h"
#include "cfi/MultiListPass.h"
#include "cfi/CfiUtil.h"

#include "dsa/CallTargets.h"
#include "dsa/DSGraph.h"
#include "dsa/DSCallGraph.h"
#include <sstream>

using namespace llvm;

namespace cfi {

    /**
     * @brief initializes the Multi-Class CFI pass
     * 
     * @arg M - current module
     */
    MultiPass::MultiPass(Module &M) 
    {
        mod = &M;
    }

    /**
     * @brief finds all transfer sites and targets and populates 
     * jmpDestMap, retDestMap
     *
     * @arg ctf - call target finder, provided by DSA
     *
     * @return void
     */
    void MultiPass::findAllTargets(CTF &ctf)
    {
        //First: find indirect branch targets 
        Module::iterator MB, ME;
        //iterate over all functions
        for (MB = mod->begin(), ME = mod->end(); MB != ME; MB++)
        {
            Function *F = &*MB;
            Function::iterator FB, FE;
            //iterate over basic blocsk in function
            for (FB = F->begin(), FE = F->end(); FB != FE; FB++)
            {
                BasicBlock *B = &*FB;

                //check if basic block ends with indirect branch 
                //Future: add other checks: exceptions, longjumps, trampolines?
                if (TerminatorInst *TI = B->getTerminator())
                {
                    if (IndirectBrInst *IBI = dyn_cast<IndirectBrInst>(TI))
                    {
                        int n = IBI->getNumSuccessors();
                        for (int j = 0; j < n; j++)
                        {
                            BasicBlock *destBlock = IBI->getSuccessor(j);
                            BasicBlock::iterator destBlockStart = destBlock->begin();
                            Instruction *destInstr = &*destBlockStart;
                            jmpDestMap[IBI].insert(destInstr);
                        }
                    }
                }
            }
        }
        
        //Second: find call and ret targets 
        CallSiteIterator CB, CE;
        //iterate over all call sites
        for (CB = ctf.cs_begin(), CE = ctf.cs_end(); CB != CE; CB++)
        {
            CallSite cs = *CB;
            Instruction *I = cs.getInstruction();

            //only consider calls that have targets
            if (ctf.begin(cs) == ctf.end(cs))
                continue;

            CallTargetIterator FB, FE;
            //iterate over call site targets
            for (FB = ctf.begin(cs), FE = ctf.end(cs); FB != FE; FB++)
            {
                const Function *F = *FB;

                //skip intrinsic or declaration only functions
                if (F->isIntrinsic() || F->isDeclaration() )
                {
                    continue;
                }

                //add indirect call targets to jmpDestMap
                if (!cs.getCalledFunction())
                {
                    BasicBlock *destBlock = const_cast<BasicBlock *>
                        (&F->getEntryBlock());
                    BasicBlock::iterator destBlockStart = destBlock->begin();
                    Instruction *destInstr = &*destBlockStart;
                    jmpDestMap[I].insert(destInstr);
                }

                //Third: find all returns in this function
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
                            retDestMap[RI].insert(I);
                        }
                    }
                }
            }
        }
    }

    /**
     * @brief generate transfer site check IDs, populates jmpCheckMap
     * and retCheckMap
     *
     * @return void
     */
    void MultiPass::generateCheckIDs()
    {
        errs() << "multipass gen check IDs\n";
        genCheckIds(jmpDestMap, jmpIdMap, jmpCheckMap);
        genCheckIds(retDestMap, retIdMap, retCheckMap);
    }

    /**
     * @brief generates transfer site check IDs given a
     * map of transfer sites to transfer targets and a
     * map of transfer targets and IDs
     *
     * @arg destMap - mapping of transfer sites to targets
     * @arg idMap - mapping of transfer targets to IDs
     * @arg checkMap - mapping of transfer sites to IDs, to be populated
     *
     * @return void
     */ 
    void MultiPass::genCheckIds(InstDestMap &destMap, 
                                InstIDMap &idMap, 
                                InstIDSetMap &checkMap)
    {
        InstDestMap::iterator MB, ME;
        /* for each callsite */
        for (MB = destMap.begin(), ME = destMap.end(); MB != ME; MB++)
        {
            InstSet::iterator SB, SE;
            /* get each target */
            for (SB = MB->second.begin(), SE = MB->second.end();SB != SE; SB++)
            {
                /* this instruction is a target */
                Instruction *B = *SB;
                /* this ID needs to be checked at this callsite */
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

    /**
     * @brief insert IDs and checks into IR
     *
     * @return void
     */
    void MultiPass::lowerChecksAndIDs()
    {
        CFILowering cfil = CFILowering(*mod);
        cfil.insertIDs(jmpIdMap, false);
        cfil.insertIDs(retIdMap, true);
        cfil.insertChecks(jmpCheckMap);  
        cfil.insertChecks(retCheckMap);  
    }
    
    /**
     * @brief get statistics for this pass
     *
     * @return string representation of stats
     */
    std::string MultiPass::getStats()
    {
        int num_sites = 0;
        int cumulative_targets = 0;
        
        float avg_tars  = 0.0;
        int min_tars = 0;
        int max_tars  = 0;

        //iterate over monitor code sites
        InstDestMap::iterator IB, IE;
        for (IB = jmpMergedMap.begin(), IE = jmpMergedMap.end();
             IB != IE; IB++)
        {
            num_sites++;
            int num_tars = IB->second.size();
            
            min_tars = min_tars == 0 ? num_tars : fmin(min_tars, num_tars);
            max_tars = fmax(max_tars, num_tars);
            cumulative_targets += num_tars;
        }

        for (IB = retMergedMap.begin(), IE = retMergedMap.end();
             IB != IE; IB++)
        {
            num_sites++;
            int num_tars = IB->second.size();
            
            min_tars = min_tars == 0 ? num_tars : fmin(min_tars, num_tars);
            max_tars = fmax(max_tars, num_tars);
            cumulative_targets += num_tars;
        }

        avg_tars = float(cumulative_targets)/float(num_sites);
        
        std::ostringstream resultStream;
        resultStream << "Multi Stats:\n";
        resultStream << "\tnum_sites = " << num_sites << "\n";
        resultStream << "\tcumulative_targets = " << cumulative_targets << "\n";
        resultStream << "\tTargets Per Callsite:\n"; 
        resultStream << "\t\tavg = " << avg_tars << "\n";
        resultStream << "\t\tmin = " << min_tars << "\n";
        resultStream << "\t\tmax = " << max_tars << "\n";

        return resultStream.str();
    }

    /**
     * @brief prints debug info for this pass
     *
     * @return void
     */
    void MultiPass::print()
    {
        print_dest_map(jmpMergedMap, "jmpMergedMap");
        print_dest_map(retMergedMap, "retMergedMap");
    }
}
