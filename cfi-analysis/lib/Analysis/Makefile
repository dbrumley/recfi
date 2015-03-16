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
#LINK_COMPONENTS = CfiPasses CfiUtil

LLVMSRC = /home/rohan/recfi/llvm-3.3
POOLALLOC_SRCDIR := $(LLVMSRC)/projects/poolalloc
SC_FLAGS = -I$(POOLALLOC_SRCDIR)/include -I../include

#LDFLAGS += /home/lynn/boeing-cfi/cfi-proj/build/$(BuildMode)/lib/CfiUtil.so

CFLAGS   += $(SC_FLAGS)
CPPFLAGS += $(SC_FLAGS)
CXXFLAGS += $(SC_FLAGS)

include $(LEVEL)/Makefile.common
