//===-- PoolAllocate.cpp - Pool Allocation Pass ---------------------------===//
// 
//                     The LLVM Compiler Infrastructure
//
// This file was developed by the LLVM research group and is distributed under
// the University of Illinois Open Source License. See LICENSE.TXT for details.
// 
//===----------------------------------------------------------------------===//
//
// This transform changes programs so that disjoint data structures are
// allocated out of different pools of memory, increasing locality.
//
//===----------------------------------------------------------------------===//

#include <iostream>

#define DEBUG_TYPE "poolalloc"

#include "dsa/DataStructure.h"
#include "dsa/DSGraph.h"
#include "poolalloc/Heuristic.h"
#include "poolalloc/PoolAllocate.h"
#include "poolalloc/RuntimeChecks.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/CFG.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FormattedStream.h"
#include "llvm/Support/Timer.h"

using namespace llvm;
using namespace PA;

char PoolAllocate::ID = 0;
char PoolAllocatePassAllPools::ID = 0;
char PoolAllocateGroup::ID = 0;

Type *PoolAllocate::PoolDescPtrTy = 0;

cl::opt<bool> PA::PA_SAFECODE("pa-safecode", cl::ReallyHidden);

namespace {
  RegisterPass<PoolAllocate>
  X("poolalloc", "Pool allocate disjoint data structures");

  RegisterPass<PoolAllocatePassAllPools>
  Y("poolalloc-passing-all-pools", "Pool allocate disjoint data structures");

  RegisterAnalysisGroup<PoolAllocateGroup> PAGroup ("Pool Allocation Group");
  RegisterAnalysisGroup<PoolAllocateGroup> PAGroup1(X);

  STATISTIC (NumArgsAdded, "Number of function arguments added");
  STATISTIC (MaxArgsAdded, "Maximum function arguments added to one function");
  STATISTIC (NumCloned   , "Number of functions cloned");
  STATISTIC (NumPools    , "Number of pools allocated");
  STATISTIC (NumTSPools  , "Number of typesafe pools");
  STATISTIC (NumPoolFree , "Number of poolfree's elided");
  STATISTIC (NumNonprofit, "Number of DSNodes not profitable");
  //  STATISTIC (NumColocated, "Number of DSNodes colocated");

  Type *VoidPtrTy;

  // The type to allocate for a pool descriptor.
  Type *PoolDescType;

  cl::opt<bool>
  DisableInitDestroyOpt("poolalloc-force-simple-pool-init",
                        cl::desc("Always insert poolinit/pooldestroy calls at start and exit of functions"));//, cl::init(true));
  cl::opt<bool>
  DisablePoolFreeOpt("poolalloc-force-all-poolfrees",
                     cl::desc("Do not try to elide poolfree's where possible"));

}

static void
createPoolAllocInit (Module & M) {
  //
  // Create the __poolalloc_init() function.
  //
  Type * VoidType = Type::getVoidTy(M.getContext());
  FunctionType * FTy = FunctionType::get(VoidType,
                                         std::vector<Type*>(),
                                         false);
  Function *InitFunc = Function::Create (FTy,
                                         GlobalValue::ExternalLinkage,
                                         "__poolalloc_init",
                                         &M);

  //
  // Add an entry basic block that just returns.
  //
  BasicBlock * BB = BasicBlock::Create (M.getContext(), "entry", InitFunc);
  ReturnInst::Create(M.getContext(), BB);

  return;
}

//
// Function: createGlobalPoolCtor()
//
// Description:
//  This function creates an empty function which will be a global constructor
//  (i.e., global ctor).  Pool Allocation will eventually add code to it to
//  initialize all of the global pools.
//
Function * PoolAllocate::createGlobalPoolCtor (Module & M) {
  //
  // Create the global pool ctor function.
  //
  LLVMContext & Context = M.getContext();
  Type * VoidType = Type::getVoidTy (Context);
  FunctionType * FTy = FunctionType::get(VoidType,
                                         std::vector<Type*>(),
                                         false);
  Function *InitFunc = Function::Create (FTy,
                                         GlobalValue::ExternalLinkage,
                                         "poolalloc_global_ctor",
                                         &M);

  //
  // Add an entry basic block that just returns.
  //
  BasicBlock * BB = BasicBlock::Create (Context, "entry", InitFunc);
  ReturnInst::Create(Context, BB);

  //
  // Insert the run-time ctor into the ctor list.
  //
  Type * Int32Type = IntegerType::getInt32Ty(Context);
  std::vector<Constant *> CtorInits;

  //
  // We need to ensure that this constructor gets called before any other code
  // in the module executes, so give the constructor a priority of 0 (highest).
  //
  CtorInits.push_back (ConstantInt::get (Int32Type, 0));
  CtorInits.push_back (InitFunc);
  Constant * RuntimeCtorInit = ConstantStruct::getAnon(Context, CtorInits);

  //
  // Get the current set of static global constructors and add the new ctor
  // to the list.
  //
  std::vector<Constant *> CurrentCtors;
  GlobalVariable * GVCtor = M.getNamedGlobal ("llvm.global_ctors");
  if (GVCtor) {
    if (Constant * C = GVCtor->getInitializer()) {
      for (unsigned index = 0; index < C->getNumOperands(); ++index) {
        CurrentCtors.push_back (cast<Constant>(C->getOperand (index)));
      }
    }

    //
    // Rename the global variable so that we can name our global
    // llvm.global_ctors.
    //
    GVCtor->setName ("removed");
  }

  //
  // The ctor list seems to be initialized in different orders on different
  // platforms, and the priority settings don't seem to work.  Examine the
  // module's platform string and take a best guess to the order.
  //
  if (M.getTargetTriple().find ("linux") == std::string::npos)
    CurrentCtors.insert (CurrentCtors.begin(), RuntimeCtorInit);
  else
    CurrentCtors.push_back (RuntimeCtorInit);

  //
  // Create a new initializer.
  //
  ArrayType * AT = ArrayType::get (RuntimeCtorInit-> getType(),
                                         CurrentCtors.size());
  Constant * NewInit=ConstantArray::get (AT, CurrentCtors);

  //
  // Create the new llvm.global_ctors global variable and replace all uses of
  // the old global variable with the new one.
  //
  new GlobalVariable (M,
                      NewInit->getType(),
                      false,
                      GlobalValue::AppendingLinkage,
                      NewInit,
                      "llvm.global_ctors");

  return InitFunc;
}

void PoolAllocate::getAnalysisUsage(AnalysisUsage &AU) const {
  // We will need the heuristic pass to tell us what to do and how to do it

  AU.addRequired<Heuristic>();
  AU.addPreserved<Heuristic>();

  if (dsa_pass_to_use == PASS_EQTD) {
    AU.addRequiredTransitive<EQTDDataStructures>();
    if(lie_preserve_passes != LIE_NONE)
      AU.addPreserved<EQTDDataStructures>();
  } else {
    AU.addRequiredTransitive<EquivBUDataStructures>();
    if(lie_preserve_passes != LIE_NONE)
      AU.addPreserved<EquivBUDataStructures>();
  }

  // Preserve the pool information across passes
  if (lie_preserve_passes == LIE_PRESERVE_ALL)
    AU.setPreservesAll();

  AU.addRequired<DataLayout>();
}

bool PoolAllocate::runOnModule(Module &M) {
  if (M.begin() == M.end()) return false;
  CurModule = &M;

  //
  // Get pointers to 8 and 32 bit LLVM integer types.
  //
  VoidType  = Type::getVoidTy(M.getContext());
  Int8Type  = IntegerType::getInt8Ty(M.getContext());
  Int32Type = IntegerType::getInt32Ty(M.getContext());

  //
  // Get references to the DSA information.  For SAFECode, we need Top-Down
  // DSA.  For Automatic Pool Allocation only, we need Bottom-Up DSA.  In all
  // cases, we need to use the Equivalence-Class version of DSA.
  //
  // FIXME: Is the PASS_DEFAULT value used?
  //
  if (dsa_pass_to_use == PASS_EQTD)
    Graphs = &getAnalysis<EQTDDataStructures>();    
  else
    Graphs = &getAnalysis<EquivBUDataStructures>();

  //
  // Get the heuristic pass and then tell it who we are.
  //
  CurHeuristic = &getAnalysis<Heuristic>();
  CurHeuristic->Initialize (*this);

  // Add the pool* prototypes to the module
  AddPoolPrototypes(&M);

  // Create the global ctor function for initializing the global pools.
  GlobalPoolCtor = createGlobalPoolCtor (M);

  // Create the pools for memory objects reachable by global variables.
  if (SetupGlobalPools(M))
    return true;

  //
  // Find the DSNodes for each function that will require pool descriptor 
  // arguments to be passed into the function.
  //
  FindPoolArgs (M);

  // Map that maps an original function to its clone
  std::map<Function*, Function*> FuncMap;

  //
  // Functions that require pool handles to be passed in as parameters will
  // need to be cloned.  Scan through the set of all functions and record which
  // ones need to be cloned.
  //
  // We record the list of functions to clone and then clone them to avoid
  // iterator invalidation errors (creating a function clone adds a function to
  // the set of functions in a Module).  This may be a little slower, but
  // random memory errors are a pain to debug.
  //
  std::vector<Function *> FunctionsToClone;
  for (Module::iterator I = M.begin(), E = M.end(); I != E; ++I) {
    if (!I->isDeclaration() && Graphs->hasDSGraph(*I)) {
      FunctionsToClone.push_back (I);
    }
  }

  //
  // Now clone a function using the pool arg list obtained in the previous
  // pass over the modules.  Loop over only the function initially in the
  // program; don't traverse newly added ones.  If the function needs new
  // arguments, make its clone.
  //
  // FIXME: Should use a isClone() method.
  //
  std::set<Function*> ClonedFunctions;
  Function *MainFunc = M.getFunction("main");
  while (FunctionsToClone.size()) {
    //
    // Remove a function from the list of functions to clone.
    //
    Function * Original = FunctionsToClone.back();
    FunctionsToClone.pop_back ();

    // Don't clone 'main'!
    if (Original == MainFunc) {
      continue;
    }

    //
    // Clone the function.  Record a pointer to the new clone if one was
    // created.
    //
    if (Function *Clone = MakeFunctionClone(*Original)) {
      FuncMap[Original] = Clone;
      ClonedFunctions.insert(Clone);
    }
  }

  //
  // Now that all call targets are available, rewrite the function bodies of
  // the clones or the original function (if the original has no clone).
  //
  // FIXME: Use utility methods to make this code more readable!
  //
  for (Module::iterator I = M.begin(), E = M.end(); I != E; ++I) {
    if (!I->isDeclaration() && !ClonedFunctions.count(I) &&
        Graphs->hasDSGraph(*I)) {
      std::map<Function*, Function*>::iterator FI = FuncMap.find(I);
      ProcessFunctionBody(*I, FI != FuncMap.end() ? *FI->second : *I);
    }
  }

  //
  // Replace any remaining uses of original functions with the transformed
  // function i.e., the cloned function.
  //
  for (std::map<Function *, Function *>::iterator I = FuncMap.begin(),
                                                  E = FuncMap.end();
                                                  I != E; ++I) {
    Function *F = I->first;

    //
    // Scan through all uses of the original function.  Replace it as long as
    // the use is not a Call or Invoke instruction that
    //  o) is within an original function (all such call instructions should
    //     have been transformed already), and
    //  o) the called function is the function that we're replacing
    //
    std::vector<User *> toReplace;
    for (Function::use_iterator User = F->use_begin();
                                User != F->use_end();
                                ++User) {
      if (CallInst * CI = dyn_cast<CallInst>(*User)) {
        if (CI->getCalledFunction() == F)
          if ((FuncMap.find(CI->getParent()->getParent())) != FuncMap.end())
            continue;
      }

      if (InvokeInst * CI = dyn_cast<InvokeInst>(*User)) {
        if (CI->getCalledFunction() == F)
          if ((FuncMap.find(CI->getParent()->getParent())) != FuncMap.end())
            continue;
      }

      //
      // We want to replace this use.  Add it to the worklist.
      //
      toReplace.push_back (*User);
    }

    //
    // Now do replacement on all items within the worklist.
    //
    while (toReplace.size()) {
      llvm::User * user = toReplace.back();
      toReplace.pop_back();

      Constant* CEnew = ConstantExpr::getPointerCast(I->second, F->getType());

      //
      // We must handle Constants specially; we cannot call replaceUsesOfWith()
      // on a constant because they are uniqued.
      //
      if (Constant *C = dyn_cast<Constant>(user)) {
        if (!isa<GlobalValue>(C)) {
          //
          // Scan through all operands in the constant.  If they are the
          // function that we want to replace, then add them to a worklist (we
          // use a worklist to avoid iterator invalidation errors).
          //
          std::vector<Use *> ReplaceWorklist;
          for (User::op_iterator use = user->op_begin();
               use != user->op_end();
               ++use) {
            if (use->get() == F) {
              ReplaceWorklist.push_back (use);
            }
          }

          //
          // Do replacements in the worklist.
          //
          for (unsigned index = 0; index < ReplaceWorklist.size(); ++index)
            C->replaceUsesOfWithOnConstant(F, CEnew, ReplaceWorklist[index]);
          continue;
        }
      }
      user->replaceUsesOfWith (F, CEnew);
    }
  }

  //
  // Add an empty __poolalloc_init() function.  SAFECode will call this to
  // intialize things; we don't make use of it with real pool allocation.
  //
  createPoolAllocInit (M);

  //
  // FIXME: Make name more descriptive and explain, in a comment here, what this
  //        code is trying to do (namely, avoid optimizations for performance
  //        overhead measurements?).
  //
  // FIXME: Breaks invalid C code. Remove from poolalloc and move to a separate pass.
  
  #if 0
  if (CurHeuristic->IsRealHeuristic())
    MicroOptimizePoolCalls();
  #endif
 
  return true;
}

// AddPoolPrototypes - Add prototypes for the pool functions to the specified
// module and update the Pool* instance variables to point to them.
//
// NOTE: If these are changed, make sure to update PoolOptimize.cpp as well!
//
void PoolAllocate::AddPoolPrototypes(Module* M) {
  if (VoidPtrTy == 0) {
    // NOTE: If these are changed, make sure to update PoolOptimize.cpp as well!
    VoidPtrTy = PointerType::getUnqual(Int8Type);
    PoolDescType = getPoolType(&M->getContext());
    PoolDescPtrTy = PointerType::getUnqual(PoolDescType);
  }

  // TODO: I'm not sure how to do this on mainline.
  //M->addTypeName("PoolDescriptor", PoolDescType);

  
  // Get poolinit function.
  PoolInit = M->getOrInsertFunction("poolinit", VoidType,
                                            PoolDescPtrTy, Int32Type,
                                            Int32Type, NULL);

  // Get pooldestroy function.
  PoolDestroy = M->getOrInsertFunction("pooldestroy", VoidType,
                                               PoolDescPtrTy, NULL);
  
  // The poolalloc function.
  PoolAlloc = M->getOrInsertFunction("poolalloc", 
                                             VoidPtrTy, PoolDescPtrTy,
                                             Int32Type, NULL);
  
  // The poolrealloc function.
  PoolRealloc = M->getOrInsertFunction("poolrealloc",
                                               VoidPtrTy, PoolDescPtrTy,
                                               VoidPtrTy, Int32Type, NULL);

  // The poolcalloc function.
  PoolCalloc = M->getOrInsertFunction("poolcalloc",
                                      VoidPtrTy, PoolDescPtrTy,
                                      Int32Type, Int32Type, NULL);

  // The poolmemalign function.
  PoolMemAlign = M->getOrInsertFunction("poolmemalign",
                                                VoidPtrTy, PoolDescPtrTy,
                                                Int32Type, Int32Type, 
                                                NULL);

  // The poolstrdup function.
  PoolStrdup = M->getOrInsertFunction("poolstrdup",
                                               VoidPtrTy, PoolDescPtrTy,
                                               VoidPtrTy, NULL);
  // The poolmemalign function.
  // Get the poolfree function.
  PoolFree = M->getOrInsertFunction("poolfree", VoidType,
                                            PoolDescPtrTy, VoidPtrTy, NULL);
  //Get the poolregister function
  PoolRegister = M->getOrInsertFunction("poolregister", VoidType,
                                 PoolDescPtrTy, VoidPtrTy, Int32Type, NULL);

  Function* pthread_create_func = M->getFunction("pthread_create");
  if(pthread_create_func)
  {
      Function::arg_iterator i = pthread_create_func->arg_begin();
      std::vector<Type*> non_vararg_params;
      non_vararg_params.push_back(i++->getType());
      non_vararg_params.push_back(i++->getType());
      non_vararg_params.push_back(i++->getType());
      non_vararg_params.push_back(Int32Type);
      PoolThreadWrapper = M->getOrInsertFunction("poolalloc_pthread_create",FunctionType::get(Int32Type,non_vararg_params,true));
  }
}

static void getCallsOf(Constant *C, std::vector<CallInst*> &Calls) {
  // Get the Function out of the constant
  Function * F;
  ConstantExpr * CE;
  if (!(F=dyn_cast<Function>(C))) {
    if ((CE = dyn_cast<ConstantExpr>(C)) && (CE->isCast()))
      F = dyn_cast<Function>(CE->getOperand(0));
    else
      assert (0 && "Constant is not a Function of ConstantExpr!"); 
  }
  Calls.clear();
  for (Value::use_iterator UI = F->use_begin(), E = F->use_end(); UI != E; ++UI)
    Calls.push_back(cast<CallInst>(*UI));
}

//
// Function: OptimizePointerNotNull()
//
// Inputs:
//  V       - ???
//  Context - The LLVM Context to which any values we insert into the program
//            will belong.
//
static void
OptimizePointerNotNull(Value *V, LLVMContext * Context) {
  for (Value::use_iterator I = V->use_begin(), E = V->use_end(); I != E; ++I) {
    Instruction *User = cast<Instruction>(*I);
    if (isa<ICmpInst>(User) && cast<ICmpInst>(User)->isEquality()) {
      ICmpInst * ICI = cast<ICmpInst>(User);
      if (isa<Constant>(User->getOperand(1)) && 
          cast<Constant>(User->getOperand(1))->isNullValue()) {
        bool CondIsTrue = ICI->getPredicate() == ICmpInst::ICMP_NE;
        Type * Int1Type  = IntegerType::getInt1Ty(*Context);
        User->replaceAllUsesWith(ConstantInt::get(Int1Type, CondIsTrue));
      }
    } else if ((User->getOpcode() == Instruction::Trunc) ||
               (User->getOpcode() == Instruction::ZExt) ||
               (User->getOpcode() == Instruction::SExt) ||
               (User->getOpcode() == Instruction::FPToUI) ||
               (User->getOpcode() == Instruction::FPToSI) ||
               (User->getOpcode() == Instruction::UIToFP) ||
               (User->getOpcode() == Instruction::SIToFP) ||
               (User->getOpcode() == Instruction::FPTrunc) ||
               (User->getOpcode() == Instruction::FPExt) ||
               (User->getOpcode() == Instruction::PtrToInt) ||
               (User->getOpcode() == Instruction::IntToPtr) ||
               (User->getOpcode() == Instruction::BitCast)) {
      // Casted pointers are also not null.
      if (isa<PointerType>(User->getType()))
        OptimizePointerNotNull(User, Context);
    } else if (User->getOpcode() == Instruction::GetElementPtr) {
      // GEP'd pointers are also not null.
      OptimizePointerNotNull(User, Context);
    }
  }
}

/// FIXME: Should these be in the pooloptimize pass?
///
/// MicroOptimizePoolCalls - Apply any microoptimizations to calls to pool
/// allocation function calls that we can.  This runs after the whole program
/// has been transformed.
void PoolAllocate::MicroOptimizePoolCalls() {
  // Optimize poolalloc
  std::vector<CallInst*> Calls;
  getCallsOf(PoolAlloc, Calls);
  for (unsigned i = 0, e = Calls.size(); i != e; ++i) {
    CallInst *CI = Calls[i];
    // poolalloc never returns null.  Loop over all uses of the call looking for
    // set(eq|ne) X, null.
    OptimizePointerNotNull(CI, &CI->getContext());
  }

  // TODO: poolfree accepts a null pointer, so remove any check above it, like
  // 'if (P) poolfree(P)'
}

//
// Function: GetNodesReachableFromGlobals()
//
// Description:
//  This function finds all DSNodes which are reachable from globals.  It finds
//  DSNodes both within the local DSGraph as well as in the Globals graph that
//  are reachable from globals.
//
// Inputs:
//  G - The DSGraph for which to find DSNodes which are reachable by globals.
//      This DSGraph can either by a DSGraph associated with a function *or*
//      it can be the globals graph itself.
//
// Outputs:
//  NodesFromGlobals - A reference to a container object in which to record
//                     DSNodes reachable from globals.  DSNodes are *added* to
//                     this container; it is not cleared by this function.
//                     DSNodes from both the local and globals graph are added.
static inline void
GetNodesReachableFromGlobals (DSGraph* G,
                              DenseSet<const DSNode*> &NodesFromGlobals) {
  //
  // Get the globals graph associated with this DSGraph.  If the globals graph
  // is NULL, then the graph that was passed in *is* the globals graph.
  //
  DSGraph * GlobalsGraph = G->getGlobalsGraph();
  if (!GlobalsGraph)
    GlobalsGraph = G;

  //
  // Find all DSNodes which are reachable in the globals graph.
  //
  for (DSGraph::node_iterator NI = GlobalsGraph->node_begin();
       NI != GlobalsGraph->node_end();
       ++NI) {
    NI->markReachableNodes(NodesFromGlobals);
  }

  //
  // Now the fun part.  Find DSNodes in the local graph that correspond to
  // those nodes reachable in the globals graph.  Add them to the set of
  // reachable nodes, too.
  //
  if (G->getGlobalsGraph()) {
    //
    // Compute a mapping between local DSNodes and DSNodes in the globals
    // graph.
    //
    DSGraph::NodeMapTy NodeMap;
    G->computeGToGGMapping (NodeMap);

    //
    // Scan through all DSNodes in the local graph.  If a local DSNode has a
    // corresponding DSNode in the globals graph that is reachable from a 
    // global, then add the local DSNode to the set of DSNodes reachable from a
    // global.
    //
    // FIXME: A node's existance within the global DSGraph is probably
    //        sufficient evidence that it is reachable from a global.
    //
    DSGraph::node_iterator ni = G->node_begin();
    for (; ni != G->node_end(); ++ni) {
      DSNode * N = ni;
      if (NodesFromGlobals.count (NodeMap[N].getNode()))
        NodesFromGlobals.insert (N);
    }
  }
}

//
// Method: FindPoolArgs()
//
// Description:
//  Loop over the functions in the original program finding the pool descriptor
//  arguments necessary for each function.
//
void
PoolAllocate::FindPoolArgs (Module & M) {
  //
  // Scan through each equivalence class.  The Equivalence Class Bottom-Up
  // pass guarantees that each function that is the target of an indirect
  // function call will have the same DSGraph and will have identical DSNodes
  // for corresponding arguments.  Therefore, we want to process all the
  // functions in the same equivalence class once to avoid doing extra work.
  //
  const DSCallGraph & callgraph = Graphs->getCallGraph();
  DSGraph* G = Graphs->getGlobalsGraph();
  DSGraph::ScalarMapTy& SM = G->getScalarMap();
  for (DSCallGraph::callee_key_iterator ii = callgraph.key_begin(),
       ee = callgraph.key_end(); ii != ee; ++ii) {
    bool isIndirect = ((*ii).getCalledFunction() == NULL);
    bool externFunctionFound = false;

    if (isIndirect) {
      std::vector<const Function *> Functions;
      DSCallGraph::callee_iterator csi = callgraph.callee_begin(*ii),
                                   cse = callgraph.callee_end(*ii);
      while(csi != cse) {
        const Function *F = *csi;
        DSCallGraph::scc_iterator sccii = callgraph.scc_begin(F),
                                sccee = callgraph.scc_end(F);
        for(;sccii != sccee; ++sccii) {
          DSGraph::ScalarMapTy::const_iterator I = SM.find(SM.getLeaderForGlobal(*sccii));
          if (I != SM.end()) {
            if ((*sccii)->isDeclaration()) {
              externFunctionFound = true;
              break;
            }
            Functions.push_back (*sccii);
          }
        }
        ++csi;
      }
      const Function *F1 = (*ii).getInstruction()->getParent()->getParent();
      F1 = callgraph.sccLeader(&*F1);

      DSCallGraph::scc_iterator sccii = callgraph.scc_begin(F1),
                                sccee = callgraph.scc_end(F1);
      for(;sccii != sccee; ++sccii) {
        DSGraph::ScalarMapTy::const_iterator I = SM.find(SM.getLeaderForGlobal(*sccii));
        if (I != SM.end()) {
          if ((*sccii)->isDeclaration()) {
            externFunctionFound = true;
            break;
          }
          Functions.push_back (*sccii);
        }
      }
      bool doNotPassPools = externFunctionFound;
      // go through the list of functions to check if any is external
      // or callable from an incomplete call site. Then no pool args 
      // are needed; else find pool args. 
      if(!doNotPassPools){
        for (unsigned index = 0; index < Functions.size(); ++index) {
          const Function * F = Functions[index];
          if (callgraph.called_from_incomplete_site(F)){
            doNotPassPools = true;
            break;
          }
        }
      }
       
      if(doNotPassPools) {
        // For functions that are in the same equivalence class as an 
        // external function, we cannot pass pool args. Because we 
        // cannot know which function the call site calls, the 
        // internal function or the external ones. 
        // FIXME: Solve this by devirtualizing the call site.
        for (unsigned index = 0; index < Functions.size(); ++index) {
          Function * F = const_cast<Function*>(Functions[index]);
          if (FunctionInfo.find (F) != FunctionInfo.end()) {
#ifndef NDEBUG
            FuncInfo & FI =  FunctionInfo.find(F)->second;
            assert(FI.ArgNodes.size() == 0);
#endif
            continue;
          }
          // TODO: Original code was:
          // FunctionInfo.insert(std::make_pair(F, FuncInfo(*F))).first->second;
          // But this has unused components.. (.first->second?)
          // So just inserting the function info, and hoping for the best.
          FunctionInfo.insert(std::make_pair(F, FuncInfo(*F)));
        }
      } else {
        FindFunctionPoolArgs (Functions);
      }
    }
  }
  
  //
  // Make sure every function has a FuncInfo structure.
  //
  for (Module::iterator I = M.begin(), E = M.end(); I != E; ++I) {
    if (!I->isDeclaration() && Graphs->hasDSGraph(*I)) {
      if (FunctionInfo.find (I) == FunctionInfo.end()) {
        std::vector<const Function *> Functions;
        Functions.push_back(I);
        FindFunctionPoolArgs (Functions);
      }
    }
  }

  return;
}

/// FindFunctionPoolArgs - In the first pass over the program, we decide which
/// arguments will have to be added for each function, build the FunctionInfo
/// map and recording this info in the ArgNodes set.
void
PoolAllocate::FindFunctionPoolArgs (const std::vector<const Function *> & Functions) {
  //
  // If there are no functions to process, then do nothing.
  //
  if (Functions.size() == 0)
    return;

  //
  // Find all of the DSNodes which could possibly require a pool to be passed
  // in.  Collect these DSNodes into one big container.
  //
  std::vector<DSNodeHandle> RootNodes;
  for (unsigned index = 0; index < Functions.size(); ++index) {
    //
    // Get the DSGraph of the function.
    //
    const Function * F = Functions[index];
    DSGraph* G = Graphs->getDSGraph (*F);

    //
    // Get all of the DSNodes which could possibly require a pool to be
    // passed into the function.
    //
    G->getFunctionArgumentsForCall (F, RootNodes);
  }

  //
  // If there is no memory activity in any of these functions, then nothing is
  // required.
  //
  if (RootNodes.size() == 0)
    return;

  //
  // Now find all nodes which are reachable from these argument DSNodes.
  //
  DenseSet<const DSNode*> MarkedNodes;
  for (unsigned index = 0; index < RootNodes.size(); ++index) {
    if (DSNode * N = RootNodes[index].getNode()) {
      N->markReachableNodes(MarkedNodes);
    }
  }

  //
  // Determine which DSNodes are reachable from globals.  If a node is
  // reachable from a global, we will create a global pool for it, so no
  // argument passage is required.
  //
  if (!PassAllArguments) {
    std::map<const DSNode*, Value*>::iterator gni;
    for (gni = GlobalNodes.begin(); gni != GlobalNodes.end(); ++gni) {
      MarkedNodes.erase(gni->first);
    }
  }

#if 0
  DenseSet<const DSNode*> NodesFromGlobals;
  for (unsigned index = 0; index < Functions.size(); ++index) {
    //
    // Get the DSGraph of the function.
    //
    const Function * F = Functions[index];
    DSGraph* G = Graphs->getDSGraph(*F);
    GetNodesReachableFromGlobals (G, NodesFromGlobals);
  }

  //
  // Remove any nodes reachable from a global.  These nodes will be put into
  // global pools, which do not require arguments to be passed in.  Also, erase
  // any marked node that is not a heap node.  Since no allocations or frees
  // will be done with it, it needs no argument.
  //
  // FIXME:
  //  1) PassAllArguments seems to be ignored here.  Why is that?
  //  2) Should the heap node check be part of the PassAllArguments check?
  //  3) SAFECode probably needs to pass the pool even if it's not a heap node.
  //     We should probably just do what the heuristic tells us to do.
  //
  for (DenseSet<const DSNode*>::iterator I = MarkedNodes.begin(),
         E = MarkedNodes.end(); I != E; ) {
    const DSNode *N = *I; ++I;
    if ((!(1 || N->isHeapNode()) && !PassAllArguments) ||
        NodesFromGlobals.count(N))
      MarkedNodes.erase(N);
  }
#endif

  //
  // Create new FuncInfo entries for all of the functions.  Each one will have
  // the same set of DSNodes passed in.
  //
  for (unsigned index = 0; index < Functions.size(); ++index) {
    Function * F = const_cast<Function*>(Functions[index]);
    if (FunctionInfo.find (F) != FunctionInfo.end()) {
#ifndef NDEBUG
      FuncInfo & FI =  FunctionInfo.find(F)->second;
      assert(FI.ArgNodes.size() == MarkedNodes.size());
#endif
      continue;
    }

    FuncInfo & FI =
            FunctionInfo.insert(std::make_pair(F, FuncInfo(*F))).first->second;
    //
    // DenseSet does not have iterator traits, so we cannot use an insert()
    // method that takes iterators.  Instead, we must use a loop to insert each
    // element into MarkedNodes and ArgNodes one at a time.
    //
    for (DenseSet<const DSNode*>::iterator ii = MarkedNodes.begin(),
         ee = MarkedNodes.end(); ii != ee; ++ii) {
      FI.MarkedNodes.insert(*ii);
      FI.ArgNodes.insert(FI.ArgNodes.end(), *ii);
    }
  }
}

//
// Method: MakeFunctionClone()
//
// Description:
//  If the specified function needs to be modified for pool allocation support,
//  make a clone of it, adding additional arguments as necessary, and return
//  it.
//
// Return value:
//  NULL - The function did not need to be cloned.
//  Otherwise, a pointer to the clone of the function is returned.
//
Function *
PoolAllocate::MakeFunctionClone (Function & F) {
  //
  // If the DSGraph for this function has no DSNodes, then we don't need to
  // make a clone.
  //
  DSGraph* G = Graphs->getDSGraph(F);
  if (G->node_begin() == G->node_end()) return 0;

  //
  // There is no need to clone a function if no pools need to be passed in!
  //
  FuncInfo &FI = *getFuncInfo(F);
  if (FI.ArgNodes.empty())
    return 0;

  // Update statistics..
  NumArgsAdded += FI.ArgNodes.size();
  if (MaxArgsAdded < FI.ArgNodes.size())
    MaxArgsAdded = FI.ArgNodes.size();
  ++NumCloned;
 
  //
  // Determine the type of the new function.  We will insert new parameters
  // for the pools to pass into the function, and then we will insert the
  // original parameter values after that.
  //
  std::vector<Type*> ArgTys(FI.ArgNodes.size(), PoolDescPtrTy);
  FunctionType *OldFuncTy = F.getFunctionType();
  ArgTys.reserve(OldFuncTy->getNumParams() + FI.ArgNodes.size());
  ArgTys.insert(ArgTys.end(), OldFuncTy->param_begin(), OldFuncTy->param_end());

  // Create the new function prototype
  FunctionType *FuncTy = FunctionType::get(OldFuncTy->getReturnType(), ArgTys,
                                           OldFuncTy->isVarArg());

  //
  // FIXME: Can probably add new function to module during creation
  //
  // Create the new function...
  //
  Function *New = Function::Create(FuncTy, Function::InternalLinkage, F.getName().str() + "_clone");
  F.getParent()->getFunctionList().insert(&F, New);
  CloneToOrigMap[New] = &F;   // Remember original function.

  // Set the rest of the new arguments names to be PDa<n> and add entries to the
  // pool descriptors map
  std::map<const DSNode*, Value*> &PoolDescriptors = FI.PoolDescriptors;
  Function::arg_iterator NI = New->arg_begin();
  for (unsigned i = 0, e = FI.ArgNodes.size(); i != e; ++i, ++NI) {
    NI->setName("PDa");
    PoolDescriptors[FI.ArgNodes[i]] = NI;
  }

  //
  // Map the existing arguments of the old function to the corresponding
  // arguments of the new function, and copy over the names.
  //
  //
  ValueToValueMapTy ValueMap;
  // FIXME: Remove use of SAFECodeEnabled flag
  // FIXME: Is FI.ValueMap empty?  We should put an assert to verify that it
  //        is.
  if (SAFECodeEnabled)
    for (std::map<const Value*, Value*>::iterator I = FI.ValueMap.begin(),
           E = FI.ValueMap.end(); I != E; ++I)
      ValueMap.insert(std::make_pair(I->first, I->second));

  for (Function::arg_iterator I = F.arg_begin();
       NI != New->arg_end(); ++I, ++NI) {
    ValueMap[I] = NI;
    NI->setName(I->getName());
  }

  // Perform the cloning.
  SmallVector<ReturnInst*,100> Returns;
  // TODO: Evalute the boolean parameter here...
  CloneFunctionInto(New, &F, ValueMap, true, Returns);

  //
  // Invert the ValueMap into the NewToOldValueMap.
  //
  std::map<Value*, const Value*> &NewToOldValueMap = FI.NewToOldValueMap;
  for (ValueToValueMapTy::iterator I = ValueMap.begin(),
         E = ValueMap.end(); I != E; ++I)
    NewToOldValueMap.insert(std::make_pair(I->second, I->first));

  //
  // The CloneFunctionInto() copies over all the parameter attributes from the
  // old function to the new function.  However, it may place the sret
  // attribute on a parameter that is no longer the first parameter.  Since
  // sret is required to be on the first parameter, go find any use of it and
  // strip it off.  This is safe since it is only used for calling conventions
  // and optimization hints.
  //
  Function::ArgumentListType & ArgList = New->getArgumentList ();
  Function::ArgumentListType::iterator arg = ArgList.begin();
  AttrBuilder B;
  B.addAttribute(Attribute::StructRet);
  for (; arg != ArgList.end(); ++arg) {
    arg->removeAttr(AttributeSet::get(F.getContext(), 0, B));
  }

  //
  // The CloneFunctionInto() function does not ensure that the clone has the
  // same calling convention as the original function.  Since pool allocation
  // merely replaces uses of the old function with the clone, both must have
  // the same calling convention.  Make sure the new function has the same
  // calling convention as the original function.
  //
  New->setCallingConv (F.getCallingConv());

  return FI.Clone = New;
}

//
// FIXME: Update comment
//
// SetupGlobalPools - Create global pools for all DSNodes in the globals graph
// which contain heap objects.  If a global variable points to a piece of memory
// allocated from the heap, this pool gets a global lifetime.  This is
// implemented by making the pool descriptor be a global variable of its own,
// and initializing the pool on entrance to main.  Note that we never destroy
// the pool because it has global lifetime.
//
// This method returns true if correct pool allocation of the module cannot be
// performed because there is no main function for the module and there are
// global pools.
//
bool PoolAllocate::SetupGlobalPools(Module &M) {
  //
  // Find all of the DSNodes which are reachable from globals and may require
  // pools.
  //
  std::vector<const DSNode*> NodesToPA;
  CurHeuristic->getGlobalPoolNodes (NodesToPA);

  errs() << "Pool allocating " << NodesToPA.size() << " global nodes!\n";

  DSGraph* GG = Graphs->getGlobalsGraph();
  std::vector<Heuristic::OnePool> ResultPools;
  CurHeuristic->AssignToPools(NodesToPA, 0, GG, ResultPools);

  BasicBlock::iterator InsertPt = GlobalPoolCtor->getEntryBlock().begin();

  //
  // Create a set of the DSNodes globally reachable from memory.  We'll assign
  // NULL pool handles for those nodes which are globally reachable but for
  // which the heuristic did not assign a pool.
  //
  std::set<const DSNode *> GlobalHeapNodes (NodesToPA.begin(), NodesToPA.end());

  // Perform all global assignments as specified.
  for (unsigned i = 0, e = ResultPools.size(); i != e; ++i) {
    Heuristic::OnePool &Pool = ResultPools[i];
    Value *PoolDesc = Pool.PoolDesc;
    if (PoolDesc == 0) {
      PoolDesc = CreateGlobalPool(Pool.PoolSize, Pool.PoolAlignment, "GlobalPool", InsertPt);

      if (Pool.NodesInPool.size() == 1 &&
          !Pool.NodesInPool[0]->isNodeCompletelyFolded())
        ++NumTSPools;
    }
    for (unsigned N = 0, e = Pool.NodesInPool.size(); N != e; ++N) {
      GlobalNodes[Pool.NodesInPool[N]] = PoolDesc;
      GlobalHeapNodes.erase(Pool.NodesInPool[N]);  // Handled!
    }
  }

  // Any unallocated DSNodes get null pool descriptor pointers.
  for (std::set<const DSNode*>::iterator I = GlobalHeapNodes.begin(),
         E = GlobalHeapNodes.end(); I != E; ++I) {
    GlobalNodes[*I] = ConstantPointerNull::get(PointerType::getUnqual(PoolDescType));
    ++NumNonprofit;
  }

  return false;
}

/// CreateGlobalPool - Create a global pool descriptor object, and insert a
/// poolinit for it into main.  IPHint is an instruction that we should insert
/// the poolinit before if not null.
GlobalVariable *PoolAllocate::CreateGlobalPool(unsigned RecSize, unsigned Align,
                                               std::string name, Instruction *IPHint) {
  GlobalVariable *GV =
    new GlobalVariable(*CurModule,
                       PoolDescType, false, GlobalValue::InternalLinkage, 
                       ConstantAggregateZero::get(PoolDescType), name);

  // Update the global DSGraph to include this.
  DSNode *GNode = Graphs->getGlobalsGraph()->addObjectToGraph(GV);
  GNode->setModifiedMarker()->setReadMarker();

  BasicBlock::iterator InsertPt;
  if (IPHint)
    InsertPt = IPHint;
  else {
    InsertPt = GlobalPoolCtor->getEntryBlock().begin();
    while (isa<AllocaInst>(InsertPt)) ++InsertPt;
  }

  Value *ElSize = ConstantInt::get(Int32Type, RecSize);
  Value *AlignV = ConstantInt::get(Int32Type, Align);
  Value* Opts[3] = {GV, ElSize, AlignV};
  CallInst::Create(PoolInit, Opts, "", InsertPt);
  ++NumPools;
  return GV;
}


// CreatePools - This creates the pool initialization and destruction code for
// the DSNodes specified by the NodesToPA list.  This adds an entry to the
// PoolDescriptors map for each DSNode.
//
// Note that this method does not insert calls to poolinit() or pooldestroy().
// Those are added later.
//
void
PoolAllocate::CreatePools (Function &F, DSGraph* DSG,
                           const std::vector<const DSNode*> &NodesToPA,
                           std::map<const DSNode*, Value*> &PoolDescriptors) {
  //
  // If there are no pools to create, then do nothing.
  //
  if (NodesToPA.empty()) return;

  std::vector<Heuristic::OnePool> ResultPools;
  CurHeuristic->AssignToPools(NodesToPA, &F, NodesToPA[0]->getParentGraph(),
                              ResultPools);

  std::set<const DSNode*> UnallocatedNodes(NodesToPA.begin(), NodesToPA.end());

  BasicBlock::iterator InsertPoint = F.front().begin();

  // Is this main?  If so, make the pool descriptors globals, not automatic
  // vars.
  bool IsMain = F.getName().str() == "main" && F.hasExternalLinkage();

  //
  // Create each pool and update the DSGraph to account for the new pool.
  // Additionally, update the mapping between DSNodes and pools.
  //
  for (unsigned i = 0, e = ResultPools.size(); i != e; ++i) {
    Heuristic::OnePool &Pool = ResultPools[i];
    Value *PoolDesc = Pool.PoolDesc;
    if (PoolDesc == 0) {
      //
      // Create a pool descriptor for the pool.  The poolinit will be inserted
      // later.
      //
      if (!IsMain) {
        PoolDesc = new AllocaInst(PoolDescType, 0, "PD", InsertPoint);

#if 0
        //
        // Create a node in DSG to represent the new alloca.
        //
        // Note:
        //  Disable this for now.  Other passes don't look up DSNodes for pool
        //  handles, and doing this seems to blow up memory consumption.  So,
        //  for now, don't do this.
        //
        DSNode *NewNode = DSG->addObjectToGraph(PoolDesc);
        NewNode->setModifiedMarker()->setReadMarker();  // This is M/R
#endif
      } else {
        PoolDesc = CreateGlobalPool(Pool.PoolSize, Pool.PoolAlignment,
                                    "PoolForMain", InsertPoint);

        // Add the global node to main's graph.
        DSNode *NewNode = DSG->addObjectToGraph(PoolDesc);
        NewNode->setModifiedMarker()->setReadMarker();  // This is M/R

        if (Pool.NodesInPool.size() == 1 &&
            !Pool.NodesInPool[0]->isNodeCompletelyFolded())
          ++NumTSPools;
      }
    }

    //
    // Update the mapping of DSNodes to pool descriptors.
    //
    // FIXME:
    //  What are unallocated DSNodes?
    //
    for (unsigned N = 0, e = Pool.NodesInPool.size(); N != e; ++N) {
      PoolDescriptors[Pool.NodesInPool[N]] = PoolDesc;
      UnallocatedNodes.erase(Pool.NodesInPool[N]);  // Handled!
    }
  }

  //
  // Any unallocated DSNodes get null pool descriptor pointers.
  //
  for (std::set<const DSNode*>::iterator I = UnallocatedNodes.begin(),
         E = UnallocatedNodes.end(); I != E; ++I) {
    PoolDescriptors[*I] = ConstantPointerNull::get(PointerType::getUnqual(PoolDescType));
    ++NumNonprofit;
  }
}

//
// Method: processFunction()
//
// Description:
//  Pool allocate any data structures which are contained in the specified
//  function.
//
void
PoolAllocate::ProcessFunctionBody(Function &F, Function &NewF) {
  //
  // Get the DSGraph of the function and the FuncInfo of the function.  We'll
  // need th former and be updatting the latter.
  //
  DSGraph* G = Graphs->getDSGraph(F);
  FuncInfo & FI = *getFuncInfo(F);

  //
  // Get the mapping between local DSNodes and DSNodes in the globals graph
  //
  DSGraph::NodeMapTy GlobalsGraphNodeMapping;
  G->computeGToGGMapping(GlobalsGraphNodeMapping);

  //
  // Determine which DSNodes have already been assigned global pools.  Record
  // this information in the function's FuncInfo structure.
  //
  for (DSGraph::node_iterator I = G->node_begin(), E = G->node_end();
       I != E;
       ++I){
    // Get the global DSNode matching this DSNode
    DSNode * N = I;

    // If the local DSNode was assigned a global pool, update the pool
    // descriptors for the function
    if (GlobalNodes[N]) {
      FI.PoolDescriptors[N] = GlobalNodes[N];
    }

    // If a corresponding global DSNode was assigned a global pool, update the
    // pool descriptors for the function
    DSNode * GGN = GlobalsGraphNodeMapping[N].getNode();
    if (GGN && GlobalNodes[GGN]) {
      FI.PoolDescriptors[N] = GlobalNodes[GGN];
    }
  }

  //
  // Ask the heuristic for the list of DSNodes which should get local pools.
  //
  std::vector<const DSNode *> LocalNodes;
  CurHeuristic->getLocalPoolNodes (F, LocalNodes);

  //
  // Remove from the set all of the DSNodes which are poolallocated in a caller
  // function.
  //
  for (unsigned index = 0; index < LocalNodes.size(); ++index) {
    if (FI.MarkedNodes.count (LocalNodes[index]) == 0) {
      FI.NodesToPA.push_back (LocalNodes[index]);
    }
  }

  //
  // Add code to create the pools that are local to this function.
  //
  if (!FI.NodesToPA.empty()) {
    errs() << "[" << F.getName().str() << "] " << FI.NodesToPA.size()
              << " nodes pool allocatable\n";
    CreatePools(NewF, G, FI.NodesToPA, FI.PoolDescriptors);
  } else {
    DEBUG(errs() << "[" << F.getName().str() << "] transforming body.\n");
  }

  // Transform the body of the function now... collecting information about uses
  // of the pools.
  std::multimap<AllocaInst*, Instruction*> PoolUses;
  std::multimap<AllocaInst*, CallInst*> PoolFrees;
  TransformBody(G, FI, PoolUses, PoolFrees, NewF);

  // Create pool construction/destruction code
  if (!FI.NodesToPA.empty())
    InitializeAndDestroyPools(NewF, FI.NodesToPA, FI.PoolDescriptors,
                              PoolUses, PoolFrees);

  //
  // Some heuristics want to do special transformation to the function.  Let
  // them do so here.
  //
  CurHeuristic->HackFunctionBody(NewF, FI.PoolDescriptors);
}

template<class IteratorTy>
static void AllOrNoneInSet(IteratorTy S, IteratorTy E,
                           std::set<BasicBlock*> &Blocks, bool &AllIn,
                           bool &NoneIn) {
  AllIn = true;
  NoneIn = true;
  for (; S != E; ++S)
    if (Blocks.count(*S))
      NoneIn = false;
    else
      AllIn = false;
}

static void DeleteIfIsPoolFree(Instruction *I, AllocaInst *PD,
                             std::multimap<AllocaInst*, CallInst*> &PoolFrees) {
  std::multimap<AllocaInst*, CallInst*>::iterator PFI, PFE;
  if (dyn_cast<CallInst>(I))
    for (tie(PFI,PFE) = PoolFrees.equal_range(PD); PFI != PFE; ++PFI)
      if (PFI->second == I) {
        PoolFrees.erase(PFI);
        I->eraseFromParent();
        ++NumPoolFree;
        return;
      }
}

void PoolAllocate::CalculateLivePoolFreeBlocks(std::set<BasicBlock*>&LiveBlocks,
                                               Value *PD) {
  for (Value::use_iterator I = PD->use_begin(), E = PD->use_end(); I != E; ++I){
    //
    // The only users of the pool should be call, invoke, and cast
    // instructions.  We know that poolfree() and pooldestroy() do not need to
    // cast pool handles, so if we see a non-call instruction, we know it's not
    // used in a poolfree() or pooldestroy() call.
    //
    if (Instruction * Inst = dyn_cast<Instruction>(*I)) {
      if (!isa<CallInst>(*I)) {
        // This block and every block that can reach this block must keep pool
        // frees.
        for (idf_ext_iterator<BasicBlock*, std::set<BasicBlock*> >
               DI = idf_ext_begin(Inst->getParent(), LiveBlocks),
               DE = idf_ext_end(Inst->getParent(), LiveBlocks);
             DI != DE; ++DI)
          /* empty */;
        continue;
      }
    }

    CallSite U = CallSite(I->stripPointerCasts());
    if (U.getCalledValue() != PoolFree && U.getCalledValue() != PoolDestroy) {
      // This block and every block that can reach this block must keep pool
      // frees.
      for (idf_ext_iterator<BasicBlock*, std::set<BasicBlock*> >
             DI = idf_ext_begin(U.getInstruction()->getParent(), LiveBlocks),
             DE = idf_ext_end(U.getInstruction()->getParent(), LiveBlocks);
           DI != DE; ++DI)
        /* empty */;
    }
  }
}

/// InitializeAndDestroyPools- This inserts calls to poolinit and pooldestroy
/// into the function to initialize and destroy one pool.
///
void PoolAllocate::InitializeAndDestroyPool(Function &F, const DSNode *Node,
                          std::map<const DSNode*, Value*> &PoolDescriptors,
                          std::multimap<AllocaInst*, Instruction*> &PoolUses,
                          std::multimap<AllocaInst*, CallInst*> &PoolFrees) {
  AllocaInst *PD = cast<AllocaInst>(PoolDescriptors[Node]);

  // Convert the PoolUses/PoolFrees sets into something specific to this pool: a
  // set of which blocks are immediately using the pool.
  std::set<BasicBlock*> UsingBlocks;
    
  std::multimap<AllocaInst*, Instruction*>::iterator PUI, PUE;
  tie(PUI, PUE) = PoolUses.equal_range(PD);
  for (; PUI != PUE; ++PUI)
    UsingBlocks.insert(PUI->second->getParent());
    
  // To calculate all of the basic blocks which require the pool to be
  // initialized before, do a depth first search on the CFG from the using
  // blocks.
  std::set<BasicBlock*> InitializedBefore;
  std::set<BasicBlock*> DestroyedAfter;
  for (std::set<BasicBlock*>::iterator I = UsingBlocks.begin(),
         E = UsingBlocks.end(); I != E; ++I) {
    for (df_ext_iterator<BasicBlock*, std::set<BasicBlock*> >
           DI = df_ext_begin(*I, InitializedBefore),
           DE = df_ext_end(*I, InitializedBefore); DI != DE; ++DI)
      /* empty */;
      
    for (idf_ext_iterator<BasicBlock*, std::set<BasicBlock*> >
           DI = idf_ext_begin(*I, DestroyedAfter),
           DE = idf_ext_end(*I, DestroyedAfter); DI != DE; ++DI)
      /* empty */;
  }
  // Now that we have created the sets, intersect them.
  std::set<BasicBlock*> LiveBlocks;
  std::set_intersection(InitializedBefore.begin(),InitializedBefore.end(),
                        DestroyedAfter.begin(), DestroyedAfter.end(),
                        std::inserter(LiveBlocks, LiveBlocks.end()));
  InitializedBefore.clear();
  DestroyedAfter.clear();
    
  DEBUG(errs() << "POOL: " << PD->getName().str() << " information:\n");
  DEBUG(errs() << "  Live in blocks: ");
  DEBUG(for (std::set<BasicBlock*>::iterator I = LiveBlocks.begin(),
               E = LiveBlocks.end(); I != E; ++I)
          errs() << (*I)->getName().str() << " ");
  DEBUG(errs() << "\n");
    
 
  std::vector<Instruction*> PoolInitPoints;
  std::vector<Instruction*> PoolDestroyPoints;

  if (DisableInitDestroyOpt) {
    // Insert poolinit calls after all of the allocas...
    Instruction *InsertPoint;
    for (BasicBlock::iterator I = F.front().begin();
         isa<AllocaInst>(InsertPoint = I); ++I)
      /*empty*/;
    PoolInitPoints.push_back(InsertPoint);

    if (F.getName().str() != "main")
      for (Function::iterator BB = F.begin(), E = F.end(); BB != E; ++BB)
        if (isa<ReturnInst>(BB->getTerminator()) ||
            isa<ResumeInst>(BB->getTerminator()))
          PoolDestroyPoints.push_back(BB->getTerminator());
  } else {
    // Keep track of the blocks we have inserted poolinit/destroy into.
    std::set<BasicBlock*> PoolInitInsertedBlocks, PoolDestroyInsertedBlocks;
    
    for (std::set<BasicBlock*>::iterator I = LiveBlocks.begin(),
           E = LiveBlocks.end(); I != E; ++I) {
      BasicBlock *BB = *I;
      TerminatorInst *Term = BB->getTerminator();
      
      // Check the predecessors of this block.  If any preds are not in the
      // set, or if there are no preds, insert a pool init.
      bool AllIn, NoneIn;
      AllOrNoneInSet(pred_begin(BB), pred_end(BB), LiveBlocks, AllIn,
                     NoneIn);
      
      if (NoneIn) {
        if (!PoolInitInsertedBlocks.count(BB)) {
          BasicBlock::iterator It = BB->begin();
          while (isa<AllocaInst>(It) || isa<PHINode>(It)) ++It;
#if 0
          // Move through all of the instructions not in the pool
          while (!PoolUses.count(std::make_pair(PD, It)))
            // Advance past non-users deleting any pool frees that we run
            // across.
            DeleteIfIsPoolFree(It++, PD, PoolFrees);
#endif
          PoolInitPoints.push_back(It);
          PoolInitInsertedBlocks.insert(BB);
        }
      } else if (!AllIn) {
      TryAgainPred:
        for (pred_iterator PI = pred_begin(BB), E = pred_end(BB); PI != E;
             ++PI)
          if (!LiveBlocks.count(*PI) && !PoolInitInsertedBlocks.count(*PI)){
            if (SplitCriticalEdge(BB, PI))
              // If the critical edge was split, *PI was invalidated
              goto TryAgainPred;
            
            // Insert at the end of the predecessor, before the terminator.
            PoolInitPoints.push_back((*PI)->getTerminator());
            PoolInitInsertedBlocks.insert(*PI);
          }
      }
      // Check the successors of this block.  If some succs are not in the
      // set, insert destroys on those successor edges.  If all succs are
      // not in the set, insert a destroy in this block.
      AllOrNoneInSet(succ_begin(BB), succ_end(BB), LiveBlocks,
                     AllIn, NoneIn);
      
      if (NoneIn) {
        // Insert before the terminator.
        if (!PoolDestroyInsertedBlocks.count(BB)) {
          BasicBlock::iterator It = Term;
          
          // Rewind to the first using instruction.
#if 0
          while (!PoolUses.count(std::make_pair(PD, It)))
            DeleteIfIsPoolFree(It--, PD, PoolFrees);
          ++It;
#endif
     
          // Insert after the first using instruction
          PoolDestroyPoints.push_back(It);
          PoolDestroyInsertedBlocks.insert(BB);
        }
      } else if (!AllIn) {
        for (succ_iterator SI = succ_begin(BB), E = succ_end(BB);
             SI != E; ++SI)
          if (!LiveBlocks.count(*SI) &&
              !PoolDestroyInsertedBlocks.count(*SI)) {
            // If this edge is critical, split it.
            SplitCriticalEdge(BB, SI);
            
            // Insert at entry to the successor, but after any PHI nodes.
            BasicBlock::iterator It = (*SI)->begin();
            while (isa<PHINode>(It)) ++It;
            PoolDestroyPoints.push_back(It);
            PoolDestroyInsertedBlocks.insert(*SI);
          }
      }
    }
  }

  DEBUG(errs() << "  Init in blocks: ");

  // Insert the calls to initialize the pool.
  unsigned ElSizeV = Heuristic::getRecommendedSize(Node);
  Value *ElSize = ConstantInt::get(Int32Type, ElSizeV);
  unsigned AlignV = Heuristic::getRecommendedAlignment(Node);
  Value *Align  = ConstantInt::get(Int32Type, AlignV);

  for (unsigned i = 0, e = PoolInitPoints.size(); i != e; ++i) {
    Value* Opts[3] = {PD, ElSize, Align};
    CallInst::Create(PoolInit, Opts,  "", PoolInitPoints[i]);
    DEBUG(errs() << PoolInitPoints[i]->getParent()->getName().str() << " ");
  }

  DEBUG(errs() << "\n  Destroy in blocks: ");

  // Loop over all of the places to insert pooldestroy's...
  for (unsigned i = 0, e = PoolDestroyPoints.size(); i != e; ++i) {
    // Insert the pooldestroy call for this pool.
    CallInst::Create(PoolDestroy, PD, "", PoolDestroyPoints[i]);
    DEBUG(errs() << PoolDestroyPoints[i]->getParent()->getName().str()<<" ");
  }
  DEBUG(errs() << "\n\n");

  // We are allowed to delete any poolfree's which occur between the last
  // call to poolalloc, and the call to pooldestroy.  Figure out which
  // basic blocks have this property for this pool.
  std::set<BasicBlock*> PoolFreeLiveBlocks;
  if (!DisablePoolFreeOpt)
    CalculateLivePoolFreeBlocks(PoolFreeLiveBlocks, PD);
  else
    PoolFreeLiveBlocks = LiveBlocks;

  // Delete any pool frees which are not in live blocks, for correctness.
  std::multimap<AllocaInst*, CallInst*>::iterator PFI, PFE;
  for (tie(PFI,PFE) = PoolFrees.equal_range(PD); PFI != PFE; ) {
    CallInst *PoolFree = (PFI++)->second;
    if (!LiveBlocks.count(PoolFree->getParent()) ||
        !PoolFreeLiveBlocks.count(PoolFree->getParent()))
      DeleteIfIsPoolFree(PoolFree, PD, PoolFrees);
  }
}


/// InitializeAndDestroyPools - This inserts calls to poolinit and pooldestroy
/// into the function to initialize and destroy the pools in the NodesToPA list.
///
void PoolAllocate::InitializeAndDestroyPools(Function &F,
                               const std::vector<const DSNode*> &NodesToPA,
                          std::map<const DSNode*, Value*> &PoolDescriptors,
                          std::multimap<AllocaInst*, Instruction*> &PoolUses,
                          std::multimap<AllocaInst*, CallInst*> &PoolFrees) {
  std::set<AllocaInst*> AllocasHandled;

  // Insert all of the poolinit/destroy calls into the function.
  for (unsigned i = 0, e = NodesToPA.size(); i != e; ++i) {
    const DSNode *Node = NodesToPA[i];

    if (isa<GlobalVariable>(PoolDescriptors[Node]) ||
        isa<ConstantPointerNull>(PoolDescriptors[Node]))
      continue;

    assert(isa<AllocaInst>(PoolDescriptors[Node]) && "Why pool allocate this?");
    AllocaInst *PD = cast<AllocaInst>(PoolDescriptors[Node]);
    
    //
    // FIXME: What is the purpose of the PoolUses and AllocasHandled code
    //        below?
    // FIXME: Turn this into an assert and fix the problem!!
    //assert(PoolUses.count(PD) && "Pool is not used, but is marked heap?!");
    if (!PoolUses.count(PD) && !PoolFrees.count(PD)) continue;
    if (!AllocasHandled.insert(PD).second) continue;
    
    ++NumPools;
    if (!Node->isNodeCompletelyFolded())
      ++NumTSPools;
    
    InitializeAndDestroyPool(F, Node, PoolDescriptors, PoolUses, PoolFrees);
  }
}

//
// Function: getNumInitialPoolArguments()
//
// Description:
//  This function determines if the specified function has inital pool arguments
//  that should be replaced, and if so, returns the numbers of initial pool arguments
//  to replace.
//
// Inputs:
//  funcname - A reference to a string containing the name of the function.
//
// Return value:
//  0 - The function does not have any initial pool arguments to replace.
//  Otherwise, the number of initial pool arguments to replace.
//
unsigned PoolAllocate::getNumInitialPoolArguments(StringRef FuncName) {
  const unsigned EntryCount =
    sizeof(RuntimeCheckEntries) / sizeof(RuntimeCheckEntries[0]);

  for (unsigned Index = 0; Index < EntryCount; ++Index) {

    if (RuntimeCheckEntries[Index].Function == FuncName)
      return RuntimeCheckEntries[Index].PoolArgc;

    else if (RuntimeCheckEntries[Index].CheckKind == CStdLibCheck) {
      // Check for _debug() versions of CStdLib functions.
      std::string DebugName =
        RuntimeCheckEntries[Index].Function + std::string("_debug");

      if (DebugName == FuncName)
        return RuntimeCheckEntries[Index].PoolArgc;
    }
  }
  
  return 0;
}
