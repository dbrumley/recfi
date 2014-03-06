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

    //set types
    typedef std::set<BasicBlock *> BBSet;
    typedef std::set<Instruction *> InstSet;

    //helper map types
    typedef std::map<Instruction *, BBSet> DestMap;
    typedef std::map<Function *, InstSet> RetMap;

    //id map types
    typedef std::map<BasicBlock *, int> BBIDMap;
    typedef std::map<Instruction *, int> InstrIDMap;
    typedef std::map<Function *, int> FuncIDMap;

    //iterator types
    typedef std::list<CallSite>::iterator CallSiteIterator;
    typedef std::vector<const Function *>::iterator CSTargetIterator; 

    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.addRequired<CTF>();
    }

    //mapping of indirect target (branch or call) instructions to
    //their destinations
    DestMap indDestMap;

    //mapping of functions to their call sites
    RetMap retMap;

    //maps of ID inline sites to IDs:
    //mappings of indirect targets to their IDs for branch/call checking
    BBIDMap targetIDs;
    //mappings of callsites to their IDs for return checking
    InstrIDMap callSiteIDs;

    //maps of ID check sites to IDs:
    //mappings of callsites/branch sites to IDs that need to be checked against
    InstrIDMap targetCheckIDs;
    //mappings of return sites to IDs that need to be checked against
    FuncIDMap returnCheckIDs;

    /*
     * find all indirect branch targets and add them to indDestMap
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
     * finds all indirect call targets and add them to indDestMap,
     * and find all return targets and add them to retTargets
     */
    void findIndCallAndRetTargets()
    {
      //do dsa call target analysis
      CTF *ctf = &getAnalysis<CTF>();

      //for all call sites
      for (CallSiteIterator CB = ctf->cs_begin(), CE = ctf->cs_end(); CB != CE; CB++)
      {
        CallSite cs = *CB;
        Instruction *I = cs.getInstruction();

        //only consider calls that have targets
	if (ctf->begin(cs) != ctf->end(cs))//&& ctf->isComplete(cs) && ctf->begin(cs) != ctf->end(cs))
	{
	  //for all call site targets
	  for (CSTargetIterator FB = ctf->begin(cs), 
	    FE = ctf->end(cs); FB != FE; FB++)
	  {
	    const Function *F = *FB;

            //add indirect call targets to indCallDestMap
	    if (!cs.getCalledFunction())
	    {
	      BasicBlock *B = const_cast<BasicBlock *>(&F->getEntryBlock());
	      indDestMap[I].insert(B);
	    }

            //add call site to retMap
	    retMap[const_cast<Function *>(F)].insert(I);
	  }
	}
      }
    }

    /*
     * merges target destination sets, generates an ID for each set, and adds
     * all targets to targetIDs 
     */
    template<typename SetType, typename MapType, typename KeyType, typename IDMapType>
    void generateIDs(MapType& m, IDMapType& idmap)
    {
      std::list<SetType> setList;

      //merge target destination sets
      for (typename MapType::iterator MB = m.begin(), ME = m.end(); 
        MB != ME; MB++)
      {
        SetType mset = MB->second;

        //add first set to basic block sets
        if (setList.size() == 0)
	{
	  setList.push_back(mset);
	}
	else
	{
	  //check if current destination set intersects with previous sets,
	  //if so, merge them
	  SetType intersect;
	  for (typename std::list<SetType>::iterator LB = setList.begin(), 
	    LE = setList.end(); LB != LE; LB++)
	  {
	    SetType lset = *LB;

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
	    setList.push_back(mset);
	  }
        }
      }

      //generate ID for each set in bbSetList, then add each block
      //and their ID to targetIDs
      for (typename std::list<SetType>::iterator LB = setList.begin(),
        LE = setList.end(); LB != LE; LB++)
      {
        SetType lset = *LB;
	int ID = rand();

        for (typename SetType::iterator SB = lset.begin(), SE = lset.end();
	  SB != SE; SB++)
	{
	  KeyType K = *SB;
	  idmap[K] = ID;
	}
      }
    }

    /*
     * generates a map of constraint check sites and the ID to be checked
     * against
     */
    template<typename TargetMap, typename Key, typename TargetIDMap, typename TargetCheckMap>
    void generateCheckIDs(TargetMap& targetMap, TargetIDMap& targetIDMap, TargetCheckMap& targetCMap)
    {
      for (typename TargetMap::iterator MB = targetMap.begin(), ME = targetMap.end(); 
        MB != ME; MB++)
      {
        //get the first target of the target set; ID of all targets in set is same
	//(there should always be an element in second)
        Key k = *MB->second.begin(); 
        int ID = targetIDMap[k];

        //map check site to target set ID
	targetCMap[MB->first] = ID;
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

      errs() << "Return Map:\n";
      RetMap& rm = retMap;
      for (RetMap::iterator RB = rm.begin(), RE = rm.end(); RB != RE; RB++)
      {
        errs() << "Function: " << RB->first->getName() << "\n";

	errs() << "Call Sites:\n";
	for (InstSet::iterator SB = RB->second.begin(), SE = RB->second.end();
	  SB != SE; SB++)
	{
	  Instruction *I = *SB;
	  I->dump();
	}
      }
    }

    /*
     * prints out the ID maps
     */
    void print_ID_maps()
    {
      errs() << "\nTarget ID Map:\n";

      int count = 0;
      for (BBIDMap::iterator BB = targetIDs.begin(), BE = targetIDs.end();
        BB != BE; BB++)
      {
        count++;
	errs() << "BasicBlock " << count << ": ID = " << BB->second << "\n";
      }

      errs() << "\nCall Site ID Map:\n";

      for (InstrIDMap::iterator BB = callSiteIDs.begin(), BE = callSiteIDs.end();
        BB != BE; BB++)
      {
	BB->first->dump();
	errs() << ": ID = " << BB->second << "\n";
      }
    }

    /*
     * prints out the ID check maps
     */
    void print_ID_check_maps()
    {
      errs() << "\nTarget ID Check Map:\n";

      for (InstrIDMap::iterator MB = targetCheckIDs.begin(), ME = targetCheckIDs.end();
        MB != ME; MB++)
      {
        errs() << "Br/Call Instr: ";
	MB->first->dump();
	errs() << "ID = " << MB->second << "\n";
      }

      errs() << "\nReturn ID Check Map:\n";

      for (FuncIDMap::iterator FB = returnCheckIDs.begin(), FE = returnCheckIDs.end();
        FB != FE; FB++)
      {
        errs() << "Function: " << FB->first->getName() << "\n";
	errs() << "ID = " << FB->second << "\n";
      }
    }

    /*
     * find all indirect call and branch targets
     */
    virtual bool runOnModule(Module &M) 
    {  
      //seed rand with current time
      srand(time(NULL));

      for (Module::iterator MB = M.begin(), ME = M.end(); MB != ME; MB++)
      {
        Function *F = &*MB;
	findIndBrTargets(F);
      }
      
      findIndCallAndRetTargets(); 
      
      //print_dest_map();

      //generate IDs for branch/call targets
      generateIDs<BBSet, DestMap, BasicBlock *, BBIDMap>(indDestMap, targetIDs);
      //generate IDs for return targets
      generateIDs<InstSet, RetMap, Instruction *, InstrIDMap>(retMap, callSiteIDs);
      
      //print_ID_maps();

      //generate IDs for target checking
      generateCheckIDs<DestMap, BasicBlock *, BBIDMap, InstrIDMap>
        (indDestMap, targetIDs, targetCheckIDs);
      //generate IDs for return checking
      generateCheckIDs<RetMap, Instruction *, InstrIDMap, FuncIDMap>
        (retMap, callSiteIDs, returnCheckIDs);

      //print_ID_check_maps();

      return false;
    }

  };
}

char SuperGraph::ID = 0;
static RegisterPass<SuperGraph> X("SuperGraph", "SuperGraph Pass (with getAnalysisUsage implemented)");
