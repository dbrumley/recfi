//===- Hello.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements two versions of the LLVM "Hello World" pass described
// in docs/WritingAnLLVMPass.html
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "SuperGraph_pass"

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

#include "dsa/CallTargets.h"

using namespace llvm;

namespace {
  struct SuperGraph : public ModulePass {
    static char ID; 
    SuperGraph() : ModulePass(ID) {}

    typedef dsa::CallTargetFinder<EQTDDataStructures> CTF;

    typedef std::set<BasicBlock *> BBSet;
    typedef std::map<Instruction *, BBSet> DestMap;
    typedef std::map<BasicBlock *, int> BBIDMap;

    typedef std::list<CallSite>::iterator CallSiteIterator;
    typedef std::vector<const Function *>::iterator CSTargetIterator; 

    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.addRequired<CTF>();
    }

    //mapping of indirect target (branch or call) instructions to
    //their destinations
    DestMap indDestMap;

    //mappings of indirect targets to their IDs
    BBIDMap targetIDs;

    /*
     * find all indirect branch targets and add them to indBrDestMap
     */
    void findIndBrTargets(Function *F)
    {
      //for all basic blocks in function
      for (Function::iterator FB = F->begin(), FE = F->end(); FB != FE; FB++)
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
	      indDestMap[IBI].insert(IBI->getSuccessor(j));
	    }
	  }
        }
      }
    }

    /*
     * finds all indirect call targets and add them to indCallDestMap 
     */
    void findIndCallTargets()
    {
      //get dsa call target analysis
      CTF *ctf = &getAnalysis<CTF>();

      //for all call sites
      for (CallSiteIterator CB = ctf->cs_begin(), CE = ctf->cs_end(); CB != CE; CB++)
      {
        CallSite cs = *CB;
        Instruction *I = cs.getInstruction();

        //only consider calls that are indirect and have targets
	if (!cs.getCalledFunction() && ctf->begin(cs) != ctf->end(cs))//&& ctf->isComplete(cs) && ctf->begin(cs) != ctf->end(cs))
	{
	  //for all targets of call site, add to indCallDestMap
	  for (CSTargetIterator FB = ctf->begin(cs), 
	       FE = ctf->end(cs); FB != FE; FB++)
	  {
	    const Function *F = *FB;
	    BasicBlock *B = const_cast<BasicBlock *>(&F->getEntryBlock());
	    indDestMap[I].insert(B);
	  }
	}
      }
    }

    /*
     * merges target destination sets, generates an ID for each set, and adds
     * all targets to targetIDs 
     */
    void generateTargetIDs()
    {
      std::list<BBSet> bbSetList;

      //merge target destination sets
      DestMap& m = indDestMap;
      for (DestMap::iterator MB = m.begin(), ME = m.end(); MB != ME; MB++)
      {
        BBSet mset = MB->second;

        //add first set to basic block sets
        if (bbSetList.size() == 0)
	{
	  bbSetList.push_back(mset);
	}
	else
	{
	  //check if current destination set intersects with previous sets,
	  //if so, merge them
	  BBSet intersect;
	  for (std::list<BBSet>::iterator LB = bbSetList.begin(), 
	    LE = bbSetList.end(); LB != LE; LB++)
	  {
	    BBSet lset = *LB;

	    set_intersection(mset.begin(), mset.end(), lset.begin(),
	      lset.end(), std::inserter(intersect, intersect.begin()));
	    if (intersect.size() > 0)
	    {
	      lset.insert(mset.begin(), mset.end());
	      break;
	    }
	  }

          //if no intersections found, add mset to list
          if (intersect.size() == 0)
	  {
	    bbSetList.push_back(mset);
	  }
        }
      }

      //generate ID for each set in bbSetList, then add each block
      //and their ID to targetIDs
      for (std::list<BBSet>::iterator LB = bbSetList.begin(),
        LE = bbSetList.end(); LB != LE; LB++)
      {
        BBSet lset = *LB;
	int ID = rand();

        for (BBSet::iterator SB = lset.begin(), SE = lset.end();
	  SB != SE; SB++)
	{
	  BasicBlock *B = *SB;
	  targetIDs[B] = ID;
	}
      }
    }

    /*
     * prints out the destination map
     */
    void print_dest_map()
    {
      errs() << "Indirect Destination Map:\n";
      DestMap& cm = indDestMap;
      for (DestMap::iterator MB = cm.begin(), ME = cm.end(); MB != ME; MB++)
      {
        errs() << "Instruction:\n\t";
        MB->first->dump();

        errs() << "Targets:\n";
	for (BBSet::iterator SB = MB->second.begin(), SE = MB->second.end();
	  SB != SE; SB++)
	{
	  BasicBlock *B = *SB;
	  B->dump();
	}
	errs() << "\n";
      }
    }

    /*
     * prints out the target ID map
     */
    void print_target_map()
    {
      errs() << "Target ID Map:\n";

      int count = 0;
      for (BBIDMap::iterator BB = targetIDs.begin(), BE = targetIDs.end();
        BB != BE; BB++)
      {
        count++;
	errs() << "BasicBlock " << count << ": ID = " << BB->second << "\n";
      }
    }

    /*
     * find all indirect call and branch targets
     */
    virtual bool runOnModule(Module &M) 
    {  
      for (Module::iterator MB = M.begin(), ME = M.end(); MB != ME; MB++)
      {
        Function *F = &*MB;
	findIndBrTargets(F);
      }
      
      findIndCallTargets(); 
      
      print_dest_map();

      generateTargetIDs();
      
      print_target_map();

      return false;
    }

  };
}

char SuperGraph::ID = 0;
static RegisterPass<SuperGraph> X("SuperGraph", "SuperGraph Pass (with getAnalysisUsage implemented)");
