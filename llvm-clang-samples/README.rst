LLVM & Clang library usage samples
==================================

A collection of samples for using LLVM and Clang as libraries.

Branches
--------

LLVM & Clang evolve rapidly and the C++ API is not stable. This means that code
that links against LLVM & Clang as libraries in version X may very well not
compile or work in version X+1.

Therefore, this repository has branches that track LLVM versions. For example,
in branch llvm3.4 the code should compile and work when linked against the
released LLVM 3.4; The code in the ``master`` branch attempts to track the
upstream trunk, but may sometimes lag behind. Also, note that as more samples
are added I'll usually add them to ``master`` and will not backport them to
older branches.

In any case, if anything doesn't compile as you'd expect it to, please open
an issue.

Last known LLVM build revision for the master branch
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The last upstream LLVM revision I've successfully built the ``master`` branch
against is r199309. It may build with newer revisions, or it may not. If you
know it builds successfully with a newer one, please let me know and I'll update
this note.

What is where
-------------

src_llvm/
    Source code for LLVM-based samples. These typically only require LLVM
    to compile and link.

src_clang/
    Source code for Clang-based samples. These require both LLVM and Clang.

using_clang_toolchain/
    Some samples of using Clang as a compilation toolchain for C and C++.

inputs/
    Some input files for the samples and tests.

test/
    Tests for the samples.

Running tests and tools
-----------------------

Note: This is not really necessary to study the examples. The tests allow me to
make sure the examples keep working as LLVM advances.

For running the tests and auxiliary tools (and any other Python scripts in this
repo), Python 3 is required (I tested with 3.3+). Once the samples are built
with 'make', just run::

  make test

Note that it expects to find binaries from the LLVM directory with which the
samples were built and linked. Look at the ``emit_build_config`` rule in the
Makefile for more information.

