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
LLVMSRC = /Users/jabat/Documents/workspace/boeing/boeing-cfi/llvm-3.3/
POOLALLOC_SRCDIR := $(LLVMSRC)/projects/poolalloc
SC_FLAGS = -I$(POOLALLOC_SRCDIR)/include

CFLAGS   += $(SC_FLAGS)
CPPFLAGS += $(SC_FLAGS)
CXXFLAGS += $(SC_FLAGS)

include $(LEVEL)/Makefile.common
