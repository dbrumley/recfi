##===- lib/Transforms/Hello/Makefile -----------------------*- Makefile -*-===##
#
#                     The LLVM Compiler Infrastructure
#
# This file is distributed under the University of Illinois Open Source
# License. See LICENSE.TXT for details.
#
##===----------------------------------------------------------------------===##

LEVEL = ../../

LIBRARYNAME = LLVMSuperGraph
LOADABLE_MODULE = 1
USEDLIBS =

#FIXME: ununsed on ubuntu??
#LLVMSRC = /home/jabat/Documents/projects/boeing/boeing-cfi/llvm-3.3
#POOLALLOC_SRCDIR := $(LLVMSRC)/projects/poolalloc
#SC_FLAGS = -I$(POOLALLOC_SRCDIR)/include -lpoolalloc -lLLVMDataStructure -I/usr/include/i386-linux-gnu/c++/4.7

SC_FLAGS = -I/usr/include/i386-linux-gnu/c++/4.7
CFLAGS   += $(SC_FLAGS)
CPPFLAGS += $(SC_FLAGS)
CXXFLAGS += $(SC_FLAGS)

include $(LEVEL)/Makefile.common
