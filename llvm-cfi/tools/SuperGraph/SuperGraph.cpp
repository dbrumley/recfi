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
#include "llvm/Function.h"
#include "llvm/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

#include "dsa/CallTargets.h"

using namespace llvm;

namespace {
  struct SuperGraph : public ModulePass {
    static char ID; 
    SuperGraph() : ModulePass(ID) {}

    typedef dsa::CallTargetFinder<Function *> CTF;
    typedef std::map<Instruction *, std::set<BasicBlock *> > DestMap;

    typedef std::list<CallSite>::iterator CallSiteIterator;
    typedef std::vector<const Function *>::iterator CSTargetIterator; 

    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.addRequired<CTF>();
    }

    //mappings of indirect branch instructions to their 
    //destination basic blocks (for calls it will be entry blocks)
    DestMap indBrDestMap;

    //mappings of indirect call instructions to their destination
    //basic blocks
    DestMap indCallDestMap;

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
	      indBrDestMap[IBI].insert(IBI->getSuccessor(j));
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

        //only consider calls that are indirect, complete, and have targets
	if (!cs.getCalledFunction() && ctf->isComplete(cs) && ctf->begin(cs) != ctf->end(cs))
	{
	  //for all targets of call site, add to indCallDestMap
	  for (CSTargetIterator FB = ctf->begin(cs), 
	       FE = ctf->end(cs); FB != FE; FB++)
	  {
	    const Function *F = *FB;
	    BasicBlock *B = const_cast<BasicBlock *>(&F->getEntryBlock());
	    indCallDestMap[I].insert(B);
	  }
	}
      }
    }

    void print_maps()
    {
      errs() << "Indirect Branch Destination Map:\n";
      DestMap& bm = indBrDestMap;
      for (DestMap::iterator MB = bm.begin(), ME = bm.end(); MB != ME; MB++)
      {
        MB->first->dump();
      }

      errs() << "Indirect Call Destination Map:\n";
      DestMap& cm = indCallDestMap;
      for (DestMap::iterator MB = cm.begin(), ME = cm.end(); MB != ME; MB++)
      {
        MB->first->dump();
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
      print_maps();
      return false;
    }

  };
}

char SuperGraph::ID = 0;
static RegisterPass<SuperGraph> X("SuperGraph", "SuperGraph Pass (with getAnalysisUsage implemented)");
