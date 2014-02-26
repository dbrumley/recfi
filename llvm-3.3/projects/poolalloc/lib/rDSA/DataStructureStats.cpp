//===- DataStructureStats.cpp - Various statistics for DS Graphs ----------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file was developed by the LLVM research group and is distributed under
// the University of Illinois Open Source License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file defines a little pass that prints out statistics for DS Graphs.
//
//===----------------------------------------------------------------------===//

#include "rdsa/DataStructure.h"
#include "rdsa/DSGraph.h"
#include "llvm/Function.h"
#include "llvm/Instructions.h"
#include "llvm/Pass.h"
#include "llvm/Support/InstVisitor.h"
#include "llvm/Support/Streams.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FormattedStream.h"

#include <ostream>
using namespace llvm;

namespace {
  STATISTIC (TotalNumCallees, "Total number of callee functions at all indirect call sites");
  STATISTIC (NumIndirectCalls, "Total number of indirect call sites in the program");
  //  STATISTIC (NumPoolNodes, "Number of allocation nodes that could be pool allocated");

  // Typed/Untyped memory accesses: If DSA can infer that the types the loads
  // and stores are accessing are correct (ie, the node has not been collapsed),
  // increment the appropriate counter.
  STATISTIC (NumTypedMemAccesses,
                                "Number of loads/stores which are fully typed");
  STATISTIC (NumUntypedMemAccesses,
                                "Number of loads/stores which are untyped");

  class DSGraphStats : public FunctionPass, public InstVisitor<DSGraphStats> {
    void countCallees(const Function* F);
    const DSGraph *TDGraph;

    DSNode *getNodeForValue(Value *V);
    bool isNodeForValueCollapsed(Value *V);
  public:
    static char ID;
    DSGraphStats() : FunctionPass((intptr_t)&ID) {}

    /// Driver functions to compute the Load/Store Dep. Graph per function.
    bool runOnFunction(Function& F);

    /// getAnalysisUsage - This modify nothing, and uses the Top-Down Graph.
    void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.setPreservesAll();
      AU.addRequired<TDDataStructures>();
    }

    void visitLoad(LoadInst &LI);
    void visitStore(StoreInst &SI);

    /// Debugging support methods
    void print(std::ostream &O, const Module* = 0) const { }
  };

  static RegisterPass<DSGraphStats> Z("dsstats", "DS Graph Statistics");
}

char DSGraphStats::ID;

FunctionPass *llvm::createDataStructureStatsPass() { 
  return new DSGraphStats();
}


static bool isIndirectCallee(Value *V) {
  if (isa<Function>(V)) return false;

  if (CastInst *CI = dyn_cast<CastInst>(V))
    return isIndirectCallee(CI->getOperand(0));
  return true;
}


void DSGraphStats::countCallees(const Function* F) {
  unsigned numIndirectCalls = 0, totalNumCallees = 0;

  for (DSGraph::fc_iterator I = TDGraph->fc_begin(), E = TDGraph->fc_end();
       I != E; ++I)
    if (isIndirectCallee(I->getCallSite().getCalledValue())) {
      // This is an indirect function call
      std::vector<const Function*> Callees;
      I->getCalleeNode()->addFullFunctionList(Callees);

      if (Callees.size() > 0) {
        totalNumCallees  += Callees.size();
        ++numIndirectCalls;
      } else {
        DEBUG(errs() << "WARNING: No callee in Function '" 
	      << F->getNameStr() << "' at call: \n"
	      << *I->getCallSite().getInstruction());
      }
    }

  TotalNumCallees  += totalNumCallees;
  NumIndirectCalls += numIndirectCalls;

  if (numIndirectCalls) {
    DEBUG(errs() << "  In function " << F->getName() << ":  "
	  << (totalNumCallees / (double) numIndirectCalls)
	  << " average callees per indirect call\n");
  }
}

DSNode *DSGraphStats::getNodeForValue(Value *V) {
  const DSGraph *G = TDGraph;
  if (isa<Constant>(V))
    G = TDGraph->getGlobalsGraph();

  const DSGraph::ScalarMapTy &ScalarMap = G->getScalarMap();
  DSGraph::ScalarMapTy::const_iterator I = ScalarMap.find(V);
  if (I != ScalarMap.end())
    return I->second.getNode();
  return 0;
}

bool DSGraphStats::isNodeForValueCollapsed(Value *V) {
  if (DSNode *N = getNodeForValue(V))
    return N->isNodeCompletelyFolded() || N->NodeType.isIncompleteNode();
  return false;
}

void DSGraphStats::visitLoad(LoadInst &LI) {
  if (isNodeForValueCollapsed(LI.getOperand(0))) {
    NumUntypedMemAccesses++;
  } else {
    NumTypedMemAccesses++;
  }
}

void DSGraphStats::visitStore(StoreInst &SI) {
  if (isNodeForValueCollapsed(SI.getOperand(1))) {
    NumUntypedMemAccesses++;
  } else {
    NumTypedMemAccesses++;
  }
}



bool DSGraphStats::runOnFunction(Function& F) {
  TDGraph = getAnalysis<TDDataStructures>().getDSGraph(&F);
  countCallees(&F);
  visit(F);
  return true;
}
