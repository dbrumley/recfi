//===- DSSupport.h - Support for datastructure graphs -----------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file was developed by the LLVM research group and is distributed under
// the University of Illinois Open Source License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// Support for graph nodes, call sites, and types.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_ANALYSIS_DSSUPPORT_H
#define LLVM_ANALYSIS_DSSUPPORT_H

#include <functional>
#include <vector>
#include <map>
#include <set>

#include "llvm/ADT/DenseSet.h"
#include "llvm/Support/CallSite.h"

namespace llvm {

class Function;
class FunctionType;
class CallInst;
class Value;
class GlobalValue;
class Type;

class DSNode;                  // Each node in the graph
class DSGraph;                 // A graph for a function
class ReachabilityCloner;

  /// isPointerType - Return true if this first class type is big enough to hold
  /// a pointer.
  ///
  bool isPointerType(Type *Ty);

//===----------------------------------------------------------------------===//
/// DSNodeHandle - Implement a "handle" to a data structure node that takes care
/// of all of the add/un'refing of the node to prevent the backpointers in the
/// graph from getting out of date.  This class represents a "pointer" in the
/// graph, whose destination is an indexed offset into a node.
///
/// Note: some functions that are marked as inline in DSNodeHandle are actually
/// defined in DSNode.h because they need knowledge of DSNode operation. Putting
/// them in a CPP file wouldn't help making them inlined and keeping DSNode and
/// DSNodeHandle (and friends) in one file complicates things.
///
class DSNodeHandle {
  mutable DSNode *N;
  mutable unsigned Offset;
  void operator==(const DSNode *N);  // DISALLOW, use to promote N to nodehandle
public:

  DSNodeHandle() : N(0), Offset(0) {}

  // Allow construction, destruction, and assignment...
  DSNodeHandle(DSNode *n, unsigned offs = 0) : N(0), Offset(0) {
    setTo(n, offs);
  }
  DSNodeHandle(const DSNodeHandle &H) : N(0), Offset(0) {
    DSNode *NN = H.getNode();
    setTo(NN, H.Offset);  // Must read offset AFTER the getNode()
  }
  ~DSNodeHandle() { setTo(0, 0); }
  DSNodeHandle &operator=(const DSNodeHandle &H) {
    if (&H == this) return *this;  // Don't set offset to 0 if self assigning.
    DSNode *NN = H.getNode();  // Call getNode() before .Offset
    setTo(NN, H.Offset);
    return *this;
  }

  bool operator<(const DSNodeHandle &H) const {  // Allow sorting
    return getNode() < H.getNode() || (N == H.N && Offset < H.Offset);
  }
  bool operator>(const DSNodeHandle &H) const { return H < *this; }
  bool operator==(const DSNodeHandle &H) const { // Allow comparison
    // getNode can change the offset, so we must call getNode() first.
    return getNode() == H.getNode() && Offset == H.Offset;
  }
  bool operator!=(const DSNodeHandle &H) const { return !operator==(H); }

  inline void swap(DSNodeHandle &NH) {
    std::swap(Offset, NH.Offset);
    std::swap(N, NH.N);
  }

  /// isNull - Check to see if getNode() == 0, without going through the trouble
  /// of checking to see if we are forwarding...
  ///
  bool isNull() const { return N == 0; }

  // Allow explicit conversion to DSNode...
  DSNode *getNode() const;  // Defined inline in DSNode.h
  unsigned getOffset() const {
    getNode();
    assert(!isForwarding() && "This is a forwarding NH, call getNode() first!");
    return Offset;
  }

  void setOffset(unsigned O) {
    assert(!isForwarding() && "This is a forwarding NH, call getNode() first!");
    //assert((!N || Offset < N->Size || (N->Size == 0 && Offset == 0) ||
    //       !N->ForwardNH.isNull()) && "Node handle offset out of range!");
    //assert((!N || O < N->Size || (N->Size == 0 && O == 0) ||
    //       !N->ForwardNH.isNull()) && "Node handle offset out of range!");
    Offset = O;
  }

  void setTo(DSNode *N, unsigned O) const; // Defined inline in DSNode.h

  void addEdgeTo(unsigned LinkNo, const DSNodeHandle &N);
  void addEdgeTo(const DSNodeHandle &N) { addEdgeTo(0, N); }

  /// mergeWith - Merge the logical node pointed to by 'this' with the node
  /// pointed to by 'N'.
  ///
  void mergeWith(const DSNodeHandle &N) const;

  /// hasLink - Return true if there is a link at the specified offset...
  ///
  inline bool hasLink(unsigned Num) const;

  /// getLink - Treat this current node pointer as a pointer to a structure of
  /// some sort.  This method will return the pointer a mem[this+Num]
  ///
  inline const DSNodeHandle &getLink(unsigned Num) const;
  inline DSNodeHandle &getLink(unsigned Num);

  inline void setLink(unsigned Num, const DSNodeHandle &NH);
private:
  DSNode *HandleForwarding() const;

  /// isForwarding - Return true if this NodeHandle is forwarding to another
  /// one.
  bool isForwarding() const;
};

} // End llvm namespace

namespace std {
  template<>
  inline void swap<llvm::DSNodeHandle>(llvm::DSNodeHandle &NH1, llvm::DSNodeHandle &NH2) { NH1.swap(NH2); }
}

namespace llvm {

//===----------------------------------------------------------------------===//
/// DSCallSite - Representation of a call site via its call instruction,
/// the DSNode handle for the callee function (or function pointer), and
/// the DSNode handles for the function arguments.
///
class DSCallSite {
public:
  typedef std::set<CallSite> MappedSites_t;
private:
  CallSite        Site;               // Actual call site
  const Function *CalleeF;            // The function called (direct call)
  DSNodeHandle    CalleeN;            // The function node called (indirect call)
  DSNodeHandle    RetVal;             // Returned value
  DSNodeHandle    VarArgVal;          // Merged var-arg val
  std::vector<DSNodeHandle> CallArgs; // The pointer arguments
  MappedSites_t MappedSites;          // The merged callsites

  static void InitNH(DSNodeHandle &NH, const DSNodeHandle &Src,
                     const std::map<const DSNode*, DSNode*> &NodeMap) {
    if (DSNode *N = Src.getNode()) {
      std::map<const DSNode*, DSNode*>::const_iterator I = NodeMap.find(N);
      assert(I != NodeMap.end() && "Node not in mapping!");
      NH.setTo(I->second, Src.getOffset());
    }
  }

  static void InitNH(DSNodeHandle &NH, const DSNodeHandle &Src,
                     const std::map<const DSNode*, DSNodeHandle> &NodeMap) {
    if (DSNode *N = Src.getNode()) {
      std::map<const DSNode*, DSNodeHandle>::const_iterator I = NodeMap.find(N);
      assert(I != NodeMap.end() && "Node not in mapping!");

      DSNode *NN = I->second.getNode(); // Call getNode before getOffset()
      NH.setTo(NN, Src.getOffset()+I->second.getOffset());
    }
  }

  static void InitNH(DSNodeHandle &NH, const DSNodeHandle &Src,
                     ReachabilityCloner &RC);


  DSCallSite();                         // DO NOT IMPLEMENT
public:
  /// Constructor.  Note - This ctor destroys the argument vector passed in.  On
  /// exit, the argument vector is empty.
  ///
  DSCallSite(CallSite CS, const DSNodeHandle &rv, const DSNodeHandle &va,
             DSNode *Callee, std::vector<DSNodeHandle> &Args)
    : Site(CS), CalleeF(0), CalleeN(Callee), RetVal(rv), VarArgVal(va) {
    assert(Callee && "Null callee node specified for call site!");
    Args.swap(CallArgs);
  }
  DSCallSite(CallSite CS, const DSNodeHandle &rv, const DSNodeHandle &va,
             const Function *Callee, std::vector<DSNodeHandle> &Args)
    : Site(CS), CalleeF(Callee), RetVal(rv), VarArgVal(va) {
    assert(Callee && "Null callee function specified for call site!");
    Args.swap(CallArgs);
  }

  DSCallSite(const DSCallSite &DSCS)   // Simple copy ctor
    : Site(DSCS.Site), CalleeF(DSCS.CalleeF), CalleeN(DSCS.CalleeN),
      RetVal(DSCS.RetVal), VarArgVal(DSCS.VarArgVal),
      CallArgs(DSCS.CallArgs), MappedSites(DSCS.MappedSites) {}

  /// Mapping copy constructor - This constructor takes a preexisting call site
  /// to copy plus a map that specifies how the links should be transformed.
  /// This is useful when moving a call site from one graph to another.
  ///
  template<typename MapTy>
  DSCallSite(const DSCallSite &FromCall, MapTy &NodeMap) {
    Site = FromCall.Site;
    InitNH(RetVal, FromCall.RetVal, NodeMap);
    InitNH(CalleeN, FromCall.CalleeN, NodeMap);
    InitNH(VarArgVal, FromCall.VarArgVal, NodeMap);
    CalleeF = FromCall.CalleeF;

    CallArgs.resize(FromCall.CallArgs.size());
    for (unsigned i = 0, e = FromCall.CallArgs.size(); i != e; ++i)
      InitNH(CallArgs[i], FromCall.CallArgs[i], NodeMap);
    MappedSites = FromCall.MappedSites;
  }

  const DSCallSite &operator=(const DSCallSite &RHS) {
    Site     = RHS.Site;
    CalleeF  = RHS.CalleeF;
    CalleeN  = RHS.CalleeN;
    RetVal   = RHS.RetVal;
    VarArgVal = RHS.VarArgVal;
    CallArgs = RHS.CallArgs;
    MappedSites = RHS.MappedSites;
    return *this;
  }

  /// isDirectCall - Return true if this call site is a direct call of the
  /// function specified by getCalleeFunc.  If not, it is an indirect call to
  /// the node specified by getCalleeNode.
  ///
  bool isDirectCall() const { return CalleeF != 0; }
  bool isIndirectCall() const { return !isDirectCall(); }


  // Accessor functions...
  const Function     &getCaller()     const;
  CallSite            getCallSite()   const { return Site; }
        DSNodeHandle &getRetVal()           { return RetVal; }
  const DSNodeHandle &getRetVal()     const { return RetVal; }
        DSNodeHandle &getVAVal()            { return VarArgVal; }
  const DSNodeHandle &getVAVal()      const { return VarArgVal; }

  DSNode *getCalleeNode() const {
    assert(!CalleeF && CalleeN.getNode()); return CalleeN.getNode();
  }
  const Function *getCalleeFunc() const {
    assert(!CalleeN.getNode() && CalleeF); return CalleeF;
  }

  unsigned getNumPtrArgs() const { return CallArgs.size(); }
  
  unsigned getNumMappedSites() const { return MappedSites.size(); }

  DSNodeHandle &getPtrArg(unsigned i) {
    assert(i < CallArgs.size() && "Argument to getPtrArgNode is out of range!");
    return CallArgs[i];
  }
  const DSNodeHandle &getPtrArg(unsigned i) const {
    assert(i < CallArgs.size() && "Argument to getPtrArgNode is out of range!");
    return CallArgs[i];
  }
  

  const MappedSites_t::iterator ms_begin() const { return MappedSites.begin(); }
  const MappedSites_t::iterator ms_end() const { return MappedSites.end(); }

  void addPtrArg(const DSNodeHandle &NH) {
    CallArgs.push_back(NH);
  }

  void swap(DSCallSite &CS) {
    if (this != &CS) {
      std::swap(Site, CS.Site);
      std::swap(RetVal, CS.RetVal);
      std::swap(VarArgVal, CS.VarArgVal);
      std::swap(CalleeN, CS.CalleeN);
      std::swap(CalleeF, CS.CalleeF);
      std::swap(CallArgs, CS.CallArgs);
      std::swap(MappedSites, CS.MappedSites);
    }
  }

  /// mergeWith - Merge the return value and parameters of the these two call
  /// sites.
  ///
  void mergeWith(DSCallSite &CS) {
    getRetVal().mergeWith(CS.getRetVal());
    getVAVal().mergeWith(CS.getVAVal());
    unsigned MinArgs = getNumPtrArgs();
    if (CS.getNumPtrArgs() < MinArgs) MinArgs = CS.getNumPtrArgs();

    for (unsigned a = 0; a != MinArgs; ++a)
      getPtrArg(a).mergeWith(CS.getPtrArg(a));

    for (unsigned a = MinArgs, e = CS.getNumPtrArgs(); a != e; ++a)
      CallArgs.push_back(CS.getPtrArg(a));

    MappedSites.insert(CS.getCallSite());
    MappedSites.insert(CS.ms_begin(), CS.ms_end());
  }

  /// markReachableNodes - This method recursively traverses the specified
  /// DSNodes, marking any nodes which are reachable.  All reachable nodes it
  /// adds to the set, which allows it to only traverse visited nodes once.
  ///
  void markReachableNodes(DenseSet<const DSNode*> &Nodes) const;

  bool operator<(const DSCallSite &CS) const {
    if (isDirectCall()) {      // This must sort by callee first!
      if (CS.isIndirectCall()) return true;
      if (CalleeF < CS.CalleeF) return true;
      if (CalleeF > CS.CalleeF) return false;
    } else {
      if (CS.isDirectCall()) return false;
      if (CalleeN < CS.CalleeN) return true;
      if (CalleeN > CS.CalleeN) return false;
    }
    if (RetVal < CS.RetVal) return true;
    if (RetVal > CS.RetVal) return false;
    if (VarArgVal < CS.VarArgVal) return true;
    if (VarArgVal > CS.VarArgVal) return false;
    return CallArgs < CS.CallArgs;
  }

  bool operator==(const DSCallSite &CS) const {
    return CalleeF == CS.CalleeF && CalleeN == CS.CalleeN &&
           RetVal == CS.RetVal && CallArgs == CS.CallArgs &&
           VarArgVal == CS.VarArgVal;
  }
  
  bool operator==(DSCallSite &CS) {
    return CalleeF == CS.CalleeF && CalleeN == CS.CalleeN &&
           RetVal == CS.RetVal && CallArgs == CS.CallArgs &&
           VarArgVal == CS.VarArgVal;
  }

  /// FunctionTypeOfCallSite - Helper method to extract the signature of a function
  /// that is called a given CallSite
  ///
  static const FunctionType *FunctionTypeOfCallSite(const CallSite & Site);

  /// isVarArg - Determines if the call this represents is to a variable argument
  /// function
  ///
  bool isVarArg() const;

  /// isUnresolvable - Determines if this call has properties that would
  /// prevent it from ever being resolvded.  Put another way, no amount
  /// additional information will make this callsite resolvable.
  ///
  bool isUnresolvable() const;
};

} // End llvm namespace

namespace std {
  template<>
  inline void swap<llvm::DSCallSite>(llvm::DSCallSite &CS1,
                                     llvm::DSCallSite &CS2) { CS1.swap(CS2); }
}
#endif
