##===- lib/CfiPass/Makefile -----------------------*- Makefile -*-===##
#
#                     The LLVM Compiler Infrastructure
#
# This file is distributed under the University of Illinois Open Source
# License. See LICENSE.TXT for details.
#
##===----------------------------------------------------------------------===##

LEVEL = ../../

LIBRARYNAME = LLVMcfi
LOADABLE_MODULE = 1
USEDLIBS =

#LLVMSRC = /Users/jabat/Documents/workspace/CMU/boeing/boeing-cfi/llvm-3.3
LLVMSRC = /home/lynn/boeing-cfi/llvm-3.3
POOLALLOC_SRCDIR := $(LLVMSRC)/projects/poolalloc
SC_FLAGS = -I$(POOLALLOC_SRCDIR)/include  

LDFLAGS = /home/lynn/boeing-cfi/cfi-proj/build/$(BuildMode)/lib/libCFIUtil.a

CFLAGS   += $(SC_FLAGS)
CPPFLAGS += $(SC_FLAGS)
CXXFLAGS += $(SC_FLAGS)

include $(LEVEL)/Makefile.common
