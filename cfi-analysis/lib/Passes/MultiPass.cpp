/*
 * TODO: Comments
 */

#include "cfi/ICfiPass.h"
#include "cfi/MultiListPass.h"
#include "cfi/CfiUtil.h"

#include "dsa/CallTargets.h"
#include "dsa/DSGraph.h"
#include "dsa/DSCallGraph.h"
#include <sstream>

using namespace llvm;

namespace cfi {

    MultiPass::MultiPass(Module &M) 
    {
        mod = &M;
    }

    void MultiPass::findAllTargets(CTF &ctf)
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
                            jmpDestMap[IBI].insert(destInstr);
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
            if (ctf.begin(cs) == ctf.end(cs))
                continue;

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
                    jmpDestMap[I].insert(destInstr);
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
                            retDestMap[RI].insert(I);
                        }
                    }
                }

            }
        }
    }

    /*
     * Each destination has been assigned an ID.
     * Now, give each callsite a set of destination IDs
     */
    void MultiPass::generateCheckIDs()
    {
        errs() << "multipass gen check IDs\n";
        genCheckIds(jmpDestMap, jmpIdMap, jmpCheckMap);
        genCheckIds(retDestMap, retIdMap, retCheckMap);
    }
    void MultiPass::genCheckIds(InstDestMap &destMap, InstIDMap &idMap, InstIDSetMap &checkMap )
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

    void MultiPass::lowerChecksAndIDs()
    {
        CFILowering cfil = CFILowering(*mod);
        cfil.insertIDs(jmpIdMap, /*isRetTarget=*/false);
        cfil.insertIDs(retIdMap, /*isRetTarget=*/true);
        cfil.insertChecks(jmpCheckMap); //checkamp 
        cfil.insertChecks(retCheckMap); //checkamp 
    }
    
    std::string MultiPass::getStats()
    {
        //destinations per callsite
        //
        //get number of classes
        ///*
        
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
    void MultiPass::print()
    {
        print_dest_map(jmpMergedMap, "jmpMergedMap");
        print_dest_map(retMergedMap, "retMergedMap");
        /*
        print_dest_map(jmpDestMap, "jmpDestMap");
        print_dest_map(retDestMap, "retDestMap");
        print_ID_check_maps(jmpCheckMap, "jmpCheckMap");
        print_ID_check_maps(retCheckMap, "retCheckMap");
        print_ID_maps(jmpIdMap, "jmpIdMap");
        print_ID_maps(retIdMap, "retIdMap");
        */

    }
}
