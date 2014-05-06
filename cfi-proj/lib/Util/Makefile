##===- lib/CFIUtil/Makefile -----------------------*- Makefile -*-===##
#
#                     The LLVM Compiler Infrastructure
#
# This file is distributed under the University of Illinois Open Source
# License. See LICENSE.TXT for details.
#
##===----------------------------------------------------------------------===##

LEVEL = ../../

LIBRARYNAME=CfiUtil

LLVMSRC = /home/jabat/Documents/boeing-cfi/llvm-3.3
POOLALLOC_SRCDIR := $(LLVMSRC)/projects/poolalloc
SC_FLAGS = -I$(POOLALLOC_SRCDIR)/include  

CFLAGS   += $(SC_FLAGS)
CPPFLAGS += $(SC_FLAGS)
CXXFLAGS += $(SC_FLAGS)

LOADABLE_MODULE := 1
BUILD_ARCHIVE := 1
SHARED_LIBRARY := 1

include $(LEVEL)/Makefile.common
