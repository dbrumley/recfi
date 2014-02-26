##===- lib/Transforms/Hello/Makefile -----------------------*- Makefile -*-===##
#
#                     The LLVM Compiler Infrastructure
#
# This file is distributed under the University of Illinois Open Source
# License. See LICENSE.TXT for details.
#
##===----------------------------------------------------------------------===##

LEVEL = ../../..
LIBRARYNAME = LLVMSuperGraph
LOADABLE_MODULE = 1
USEDLIBS =

# If we don't need RTTI or EH, there's no reason to export anything
# from the hello plugin.
ifneq ($(REQUIRES_RTTI), 1)
ifneq ($(REQUIRES_EH), 1)
EXPORTED_SYMBOL_FILE = $(PROJ_SRC_DIR)/SuperGraph.exports
endif
endif

POOLALLOC_SRCDIR := $(LEVEL)/projects/poolalloc

SC_FLAGS = -I$(POOLALLOC_SRCDIR)/include
CFLAGS   += $(SC_FLAGS) -lpoolalloc
CPPFLAGS += $(SC_FLAGS)
CXXFLAGS += $(SC_FLAGS) -lpoolalloc 
CXXFLAGS :=$(filter-out -c, $(C++FLAGS))

include $(LEVEL)/Makefile.common
