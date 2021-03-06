# -*- makefile -*- Time-stamp: <06/11/02 10:37:02 ptr>
#
# Copyright (c) 1997-1999, 2002, 2003, 2005, 2006
# Petr Ovtchenkov
#
# Portion Copyright (c) 1999-2001
# Parallel Graphics Ltd.
#
# Licensed under the Academic Free License version 3.0
#

DBG_SUFFIX ?= g
STLDBG_SUFFIX ?= stl${DBG_SUFFIX}

# Shared libraries:

ifndef LIB_MOTIF
SO_NAME        := lib${LIBNAME}.$(SO)
else
SO_NAME        := lib${LIBNAME}_${LIB_MOTIF}.${SO}
endif
SO_NAMEx       := ${SO_NAME}.${MAJOR}
SO_NAMExx      := ${SO_NAMEx}.${MINOR}
SO_NAMExxx     := ${SO_NAMExx}.${PATCH}

SO_NAME_OUT    := $(OUTPUT_DIR)/${SO_NAME}
SO_NAME_OUTx   := $(OUTPUT_DIR)/${SO_NAMEx}
SO_NAME_OUTxx  := $(OUTPUT_DIR)/${SO_NAMExx}
SO_NAME_OUTxxx := $(OUTPUT_DIR)/${SO_NAMExxx}

ifndef LIB_MOTIF
SO_NAME_DBG    := lib${LIBNAME}${DBG_SUFFIX}.$(SO)
else
SO_NAME_DBG    := lib${LIBNAME}${DBG_SUFFIX}_${LIB_MOTIF}.$(SO)
endif
SO_NAME_DBGx   := ${SO_NAME_DBG}.${MAJOR}
SO_NAME_DBGxx  := ${SO_NAME_DBGx}.${MINOR}
SO_NAME_DBGxxx := ${SO_NAME_DBGxx}.${PATCH}

SO_NAME_OUT_DBG    := $(OUTPUT_DIR_DBG)/${SO_NAME_DBG}
SO_NAME_OUT_DBGx   := $(OUTPUT_DIR_DBG)/${SO_NAME_DBGx}
SO_NAME_OUT_DBGxx  := $(OUTPUT_DIR_DBG)/${SO_NAME_DBGxx}
SO_NAME_OUT_DBGxxx := $(OUTPUT_DIR_DBG)/${SO_NAME_DBGxxx}

ifndef WITHOUT_STLPORT
ifndef LIB_MOTIF
SO_NAME_STLDBG    := lib${LIBNAME}${STLDBG_SUFFIX}.$(SO)
else
SO_NAME_STLDBG    := lib${LIBNAME}${STLDBG_SUFFIX}_${LIB_MOTIF}.$(SO)
endif
SO_NAME_STLDBGx   := ${SO_NAME_STLDBG}.${MAJOR}
SO_NAME_STLDBGxx  := ${SO_NAME_STLDBGx}.${MINOR}
SO_NAME_STLDBGxxx := ${SO_NAME_STLDBGxx}.${PATCH}

SO_NAME_OUT_STLDBG    := $(OUTPUT_DIR_STLDBG)/${SO_NAME_STLDBG}
SO_NAME_OUT_STLDBGx   := $(OUTPUT_DIR_STLDBG)/${SO_NAME_STLDBGx}
SO_NAME_OUT_STLDBGxx  := $(OUTPUT_DIR_STLDBG)/${SO_NAME_STLDBGxx}
SO_NAME_OUT_STLDBGxxx := $(OUTPUT_DIR_STLDBG)/${SO_NAME_STLDBGxxx}
# WITHOUT_STLPORT
endif

# Static libraries:

ifndef LIB_MOTIF
A_NAME := lib${LIBNAME}.$(ARCH)
else
A_NAME := lib${LIBNAME}_${LIB_MOTIF}.$(ARCH)
endif
A_NAME_OUT := $(OUTPUT_DIR_A)/$(A_NAME)

ifndef LIB_MOTIF
A_NAME_DBG := lib${LIBNAME}${DBG_SUFFIX}.$(ARCH)
else
A_NAME_DBG := lib${LIBNAME}${DBG_SUFFIX}_${LIB_MOTIF}.$(ARCH)
endif
A_NAME_OUT_DBG := $(OUTPUT_DIR_A_DBG)/$(A_NAME_DBG)

ifndef WITHOUT_STLPORT
ifndef LIB_MOTIF
A_NAME_STLDBG := lib${LIBNAME}${STLDBG_SUFFIX}.$(ARCH)
else
A_NAME_STLDBG := lib${LIBNAME}${STLDBG_SUFFIX}_${LIB_MOTIF}.$(ARCH)
endif
A_NAME_OUT_STLDBG := $(OUTPUT_DIR_A_STLDBG)/$(A_NAME_STLDBG)
endif
