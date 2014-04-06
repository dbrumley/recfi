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

LLVMSRC = /Users/jabat/Documents/workspace/CMU/boeing/boeing-cfi/llvm-3.3
#LLVMSRC = /Users/oulinyao/Desktop/MSISTM/CFI/project/boeing-cfi/llvm-3.3
POOLALLOC_SRCDIR := $(LLVMSRC)/projects/poolalloc
SC_FLAGS = -I$(POOLALLOC_SRCDIR)/include  

CFLAGS   += $(SC_FLAGS)
CPPFLAGS += $(SC_FLAGS)
CXXFLAGS += $(SC_FLAGS)

include $(LEVEL)/Makefile.common
