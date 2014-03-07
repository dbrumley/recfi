##===- projects/sample/tools/sample/Makefile ---------------*- Makefile -*-===##

#
# Indicate where we are relative to the top of the source tree.
#
LEVEL=../..

LIBRARYNAME = LLVMcfi_pass
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
