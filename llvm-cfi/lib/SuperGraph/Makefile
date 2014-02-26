##===- lib/Transforms/Hello/Makefile -----------------------*- Makefile -*-===##
#
#                     The LLVM Compiler Infrastructure
#
# This file is distributed under the University of Illinois Open Source
# License. See LICENSE.TXT for details.
#
##===----------------------------------------------------------------------===##

LEVEL = ../../
LLVMSRC = /Users/oulinyao/Desktop/MSISTM/CFI/project/boeing-cfi/llvm-3.3/

LIBRARYNAME = LLVMSuperGraph
LOADABLE_MODULE = 1
USEDLIBS =

# If we don't need RTTI or EH, there's no reason to export anything
# from the hello plugin.
#ifneq ($(REQUIRES_RTTI), 1)
#ifneq ($(REQUIRES_EH), 1)
#EXPORTED_SYMBOL_FILE = $(PROJ_SRC_DIR)/SuperGraph.exports
#endif
#endif

POOLALLOC_SRCDIR := $(LLVMSRC)/projects/poolalloc

SC_FLAGS = -I$(POOLALLOC_SRCDIR)/include -lpoolalloc -lLLVMDataStructure
CFLAGS   += $(SC_FLAGS)
CPPFLAGS += $(SC_FLAGS)
CXXFLAGS += $(SC_FLAGS)

include $(LEVEL)/Makefile.common
