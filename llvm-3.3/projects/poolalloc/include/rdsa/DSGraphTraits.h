//===- DSGraphTraits.h - Provide generic graph interface --------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file was developed by the LLVM research group and is distributed under
// the University of Illinois Open Source License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file provides GraphTraits specializations for the DataStructure graph
// nodes, allowing datastructure graphs to be processed by generic graph
// algorithms.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_ANALYSIS_DSGRAPHTRAITS_H
#define LLVM_ANALYSIS_DSGRAPHTRAITS_H

#include "rdsa/DSGraph.h"
#include "llvm/ADT/GraphTraits.h"
#include "llvm/ADT/iterator.h"
#include "llvm/ADT/STLExtras.h"

namespace llvm {

template<typename NodeTy>
class DSNodeIterator : public forward_iterator<const DSNode, ptrdiff_t> {
  friend class DSNode;
  NodeTy * const Node;
  unsigned Offset;

  typedef DSNodeIterator<NodeTy> _Self;

  DSNodeIterator(NodeTy *N) : Node(N), Offset(0) {}   // begin iterator
  DSNodeIterator(NodeTy *N, bool) : Node(N) {         // Create end iterator
    if (N != 0) {
      Offset = N->getNumLinks();
      if (Offset == 0 && Node->getForwardNode() &&
          Node->NodeType.isDeadNode())        // Model Forward link
        Offset += 1;
    } else {
      Offset = 0;
    }
  }
public:
  DSNodeIterator(const DSNodeHandle &NH)
    : Node(NH.getNode()), Offset(NH.getOffset()) {}

  bool operator==(const _Self& x) const {
    return Offset == x.Offset;
  }
  bool operator!=(const _Self& x) const { return !operator==(x); }

  const _Self &operator=(const _Self &I) {
    assert(I.Node == Node && "Cannot assign iterators to two different nodes!");
    Offset = I.Offset;
    return *this;
  }

  pointer operator*() const {
    if (Node->NodeType.isDeadNode())
      return Node->getForwardNode();
    else
      return Node->getLink(Offset).getNode();
  }
  pointer operator->() const { return operator*(); }

  _Self& operator++() {                // Preincrement
    Offset += 1;
    return *this;
  }
  _Self operator++(int) { // Postincrement
    _Self tmp = *this; ++*this; return tmp;
  }

  unsigned getOffset() const { return Offset; }
  const DSNode *getNode() const { return Node; }
};

// Provide iterators for DSNode...
inline DSNode::iterator DSNode::begin() {
  return DSNode::iterator(this);
}
inline DSNode::iterator DSNode::end() {
  return DSNode::iterator(this, false);
}
inline DSNode::const_iterator DSNode::begin() const {
  return DSNode::const_iterator(this);
}
inline DSNode::const_iterator DSNode::end() const {
  return DSNode::const_iterator(this, false);
}

template <> struct GraphTraits<DSNode*> {
  typedef DSNode NodeType;
  typedef DSNode::iterator ChildIteratorType;

  static NodeType *getEntryNode(NodeType *N) { return N; }
  static ChildIteratorType child_begin(NodeType *N) { return N->begin(); }
  static ChildIteratorType child_end(NodeType *N) { return N->end(); }
};

template <> struct GraphTraits<const DSNode*> {
  typedef const DSNode NodeType;
  typedef DSNode::const_iterator ChildIteratorType;

  static NodeType *getEntryNode(NodeType *N) { return N; }
  static ChildIteratorType child_begin(NodeType *N) { return N->begin(); }
  static ChildIteratorType child_end(NodeType *N) { return N->end(); }
};

static       DSNode &dereference (      DSNode *N) { return *N; }

template <> struct GraphTraits<DSGraph*> {
  typedef DSNode NodeType;
  typedef DSNode::iterator ChildIteratorType;

  typedef std::pointer_to_unary_function<DSNode *, DSNode&> DerefFun;

  // nodes_iterator/begin/end - Allow iteration over all nodes in the graph
  typedef mapped_iterator<DSGraph::node_iterator, DerefFun> nodes_iterator;
  static nodes_iterator nodes_begin(DSGraph *G) {
    return map_iterator(G->node_begin(), DerefFun(dereference));
  }
  static nodes_iterator nodes_end(DSGraph *G) {
    return map_iterator(G->node_end(), DerefFun(dereference));
  }

  static ChildIteratorType child_begin(NodeType *N) { return N->begin(); }
  static ChildIteratorType child_end(NodeType *N) { return N->end(); }
};

template <> struct GraphTraits<const DSGraph*> {
  typedef const DSNode NodeType;
  typedef DSNode::const_iterator ChildIteratorType;

  // nodes_iterator/begin/end - Allow iteration over all nodes in the graph
  typedef DSGraph::node_const_iterator nodes_iterator;
  static nodes_iterator nodes_begin(const DSGraph *G) {
    return G->node_begin();
  }
  static nodes_iterator nodes_end(const DSGraph *G) {
    return G->node_end();
  }

  static ChildIteratorType child_begin(const NodeType *N) { return N->begin(); }
  static ChildIteratorType child_end(const NodeType *N) { return N->end(); }
};

} // End llvm namespace

#endif
