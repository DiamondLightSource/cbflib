m4_define(`cbf_version',`0.7.8')m4_dnl
m4_define(`cbf_date',`25 Dec 2007')m4_dnl
m4_ifelse(cbf_system,`',`m4_define(`cbf_system',`LINUX')')
`######################################################################
#  Makefile - command file for make to create CBFlib                 #
#                                                                    #
# Version 'cbf_version cbf_date`                                          #
#                                                                    #
#                          Paul Ellis and                            #
#         Herbert J. Bernstein (yaya@bernstein-plus-sons.com)        #
#                                                                    #
# (C) Copyright 2006 - 2007 Herbert J. Bernstein                     #
#                                                                    #
######################################################################

######################################################################
#                                                                    #
# YOU MAY REDISTRIBUTE THE CBFLIB PACKAGE UNDER THE TERMS OF THE GPL #
#                                                                    #
# ALTERNATIVELY YOU MAY REDISTRIBUTE THE CBFLIB API UNDER THE TERMS  #
# OF THE LGPL                                                        #
#                                                                    #
######################################################################

########################### GPL NOTICES ##############################
#                                                                    #
# This program is free software; you can redistribute it and/or      #
# modify it under the terms of the GNU General Public License as     #
# published by the Free Software Foundation; either version 2 of     #
# (the License, or (at your option) any later version.               #
#                                                                    #
# This program is distributed in the hope that it will be useful,    #
# but WITHOUT ANY WARRANTY; without even the implied warranty of     #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the      #
# GNU General Public License for more details.                       #
#                                                                    #
# You should have received a copy of the GNU General Public License  #
# along with this program; if not, write to the Free Software        #
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA           #
# 02111-1307  USA                                                    #
#                                                                    #
######################################################################

######################### LGPL NOTICES ###############################
#                                                                    #
# This library is free software; you can redistribute it and/or      #
# modify it under the terms of the GNU Lesser General Public         #
# License as published by the Free Software Foundation; either       #
# version 2.1 of the License, or (at your option) any later version. #
#                                                                    #
# This library is distributed in the hope that it will be useful,    #
# but WITHOUT ANY WARRANTY; without even the implied warranty of     #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU  #
# Lesser General Public License for more details.                    #
#                                                                    #
# You should have received a copy of the GNU Lesser General Public   #
# License along with this library; if not, write to the Free         #
# Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,    #
# MA  02110-1301  USA                                                #
#                                                                    #
######################################################################

######################################################################
#                                                                    #
#                    Stanford University Notices                     #
#  for the CBFlib software package that incorporates SLAC software   #
#                 on which copyright is disclaimed                   #
#                                                                    #
# This software                                                      #
# -------------                                                      #
# The term "this software", as used in these Notices, refers to      #
# those portions of the software package CBFlib that were created by #
# employees of the Stanford Linear Accelerator Center, Stanford      #
# University.                                                        #
#                                                                    #
# Stanford disclaimer of copyright                                   #
# --------------------------------                                   #
# Stanford University, owner of the copyright, hereby disclaims its  #
# copyright and all other rights in this software.  Hence, anyone    #
# may freely use it for any purpose without restriction.             #
#                                                                    #
# Acknowledgement of sponsorship                                     #
# ------------------------------                                     #
# This software was produced by the Stanford Linear Accelerator      #
# Center, Stanford University, under Contract DE-AC03-76SFO0515 with #
# the Department of Energy.                                          #
#                                                                    #
# Government disclaimer of liability                                 #
# ----------------------------------                                 #
# Neither the United States nor the United States Department of      #
# Energy, nor any of their employees, makes any warranty, express or #
# implied, or assumes any legal liability or responsibility for the  #
# accuracy, completeness, or usefulness of any data, apparatus,      #
# product, or process disclosed, or represents that its use would    #
# not infringe privately owned rights.                               #
#                                                                    #
# Stanford disclaimer of liability                                   #
# --------------------------------                                   #
# Stanford University makes no representations or warranties,        #
# express or implied, nor assumes any liability for the use of this  #
# software.                                                          #
#                                                                    #
# Maintenance of notices                                             #
# ----------------------                                             #
# In the interest of clarity regarding the origin and status of this #
# software, this and all the preceding Stanford University notices   #
# are to remain affixed to any copy or derivative of this software   #
# made or distributed by the recipient and are to be affixed to any  #
# copy of software made or distributed by the recipient that         #
# contains a copy or derivative of this software.                    #
#                                                                    #
# Based on SLAC Software Notices, Set 4                              #
# OTT.002a, 2004 FEB 03                                              #
######################################################################



######################################################################
#                               NOTICE                               #
# Creative endeavors depend on the lively exchange of ideas. There   #
# are laws and customs which establish rights and responsibilities   #
# for authors and the users of what authors create.  This notice     #
# is not intended to prevent you from using the software and         #
# documents in this package, but to ensure that there are no         #
# misunderstandings about terms and conditions of such use.          #
#                                                                    #
# Please read the following notice carefully.  If you do not         #
# understand any portion of this notice, please seek appropriate     #
# professional legal advice before making use of the software and    #
# documents included in this software package.  In addition to       #
# whatever other steps you may be obliged to take to respect the     #
# intellectual property rights of the various parties involved, if   #
# you do make use of the software and documents in this package,     #
# please give credit where credit is due by citing this package,     #
# its authors and the URL or other source from which you obtained    #
# it, or equivalent primary references in the literature with the    #
# same authors.                                                      #
#                                                                    #
# Some of the software and documents included within this software   #
# package are the intellectual property of various parties, and      #
# placement in this package does not in any way imply that any       #
# such rights have in any way been waived or diminished.             #
#                                                                    #
# With respect to any software or documents for which a copyright    #
# exists, ALL RIGHTS ARE RESERVED TO THE OWNERS OF SUCH COPYRIGHT.   #
#                                                                    #
# Even though the authors of the various documents and software      #
# found here have made a good faith effort to ensure that the        #
# documents are correct and that the software performs according     #
# to its documentation, and we would greatly appreciate hearing of   #
# any problems you may encounter, the programs and documents any     #
# files created by the programs are provided **AS IS** without any   *
# warranty as to correctness, merchantability or fitness for any     #
# particular or general use.                                         #
#                                                                    #
# THE RESPONSIBILITY FOR ANY ADVERSE CONSEQUENCES FROM THE USE OF    #
# PROGRAMS OR DOCUMENTS OR ANY FILE OR FILES CREATED BY USE OF THE   #
# PROGRAMS OR DOCUMENTS LIES SOLELY WITH THE USERS OF THE PROGRAMS   #
# OR DOCUMENTS OR FILE OR FILES AND NOT WITH AUTHORS OF THE          #
# PROGRAMS OR DOCUMENTS.                                             #
######################################################################

######################################################################
#                                                                    #
#                           The IUCr Policy                          #
#      for the Protection and the Promotion of the STAR File and     #
#     CIF Standards for Exchanging and Archiving Electronic Data     #
#                                                                    #
# Overview                                                           #
#                                                                    #
# The Crystallographic Information File (CIF)[1] is a standard for   #
# information interchange promulgated by the International Union of  #
# Crystallography (IUCr). CIF (Hall, Allen & Brown, 1991) is the     #
# recommended method for submitting publications to Acta             #
# Crystallographica Section C and reports of crystal structure       #
# determinations to other sections of Acta Crystallographica         #
# and many other journals. The syntax of a CIF is a subset of the    #
# more general STAR File[2] format. The CIF and STAR File approaches #
# are used increasingly in the structural sciences for data exchange #
# and archiving, and are having a significant influence on these     #
# activities in other fields.                                        #
#                                                                    #
# Statement of intent                                                #
#                                                                    #
# The IUCr''`s interest in the STAR File is as a general data          #
# interchange standard for science, and its interest in the CIF,     #
# a conformant derivative of the STAR File, is as a concise data     #
# exchange and archival standard for crystallography and structural  #
# science.                                                           #
#                                                                    #
# Protection of the standards                                        #
#                                                                    #
# To protect the STAR File and the CIF as standards for              #
# interchanging and archiving electronic data, the IUCr, on behalf   #
# of the scientific community,                                       #
#                                                                    #
# # holds the copyrights on the standards themselves,                *
#                                                                    #
# # owns the associated trademarks and service marks, and            *
#                                                                    #
# # holds a patent on the STAR File.                                 *
#                                                                    #
# These intellectual property rights relate solely to the            #
# interchange formats, not to the data contained therein, nor to     #
# the software used in the generation, access or manipulation of     #
# the data.                                                          #
#                                                                    #
# Promotion of the standards                                         #
#                                                                    #
# The sole requirement that the IUCr, in its protective role,        #
# imposes on software purporting to process STAR File or CIF data    #
# is that the following conditions be met prior to sale or           #
# distribution.                                                      #
#                                                                    #
# # Software claiming to read files written to either the STAR       *
# File or the CIF standard must be able to extract the pertinent     #
# data from a file conformant to the STAR File syntax, or the CIF    #
# syntax, respectively.                                              #
#                                                                    #
# # Software claiming to write files in either the STAR File, or     *
# the CIF, standard must produce files that are conformant to the    #
# STAR File syntax, or the CIF syntax, respectively.                 #
#                                                                    #
# # Software claiming to read definitions from a specific data       *
# dictionary approved by the IUCr must be able to extract any        #
# pertinent definition which is conformant to the dictionary         #
# definition language (DDL)[3] associated with that dictionary.      #
#                                                                    #
# The IUCr, through its Committee on CIF Standards, will assist      #
# any developer to verify that software meets these conformance      #
# conditions.                                                        #
#                                                                    #
# Glossary of terms                                                  #
#                                                                    #
# [1] CIF:  is a data file conformant to the file syntax defined     #
# at http://www.iucr.org/iucr-top/cif/spec/index.html                #
#                                                                    #
# [2] STAR File:  is a data file conformant to the file syntax       #
# defined at http://www.iucr.org/iucr-top/cif/spec/star/index.html   #
#                                                                    #
# [3] DDL:  is a language used in a data dictionary to define data   #
# items in terms of "attributes". Dictionaries currently approved    #
# by the IUCr, and the DDL versions used to construct these          #
# dictionaries, are listed at                                        #
# http://www.iucr.org/iucr-top/cif/spec/ddl/index.html               #
#                                                                    #
# Last modified: 30 September 2000                                   #
#                                                                    #
# IUCr Policy Copyright (C) 2000 International Union of              #
# Crystallography                                                    #
######################################################################


# Version string
VERSION = 'cbf_version`


#
# Definitions to get gnu version of getopt or system version of getopt
#
#GETOPT		=	SYSTEM
ifeq ($(GETOPT),)
  GETOPT 	=	getopt-1.1.4_cbf
endif

# Program to use to retrieve a URL

DOWNLOAD = /usr/bin/wget

# Flag to control symlinks versus copying

SLFLAGS = --use_ln

#
# Program to use to pack shars
#
SHAR	= /usr/bin/shar
#SHAR	= /usr/local/bin/gshar

#
# Program to use to create archives
#
AR	= /usr/bin/ar

#
# Program to use to add an index to an archive
#
RANLIB  = /usr/bin/ranlib

#
# Program to use to decompress a data file
#
DECOMPRESS = /usr/bin/bunzip2

#
# Extension for compressed data file (with period)
#
CEXT = .bz2


# call to time a command

#TIME =
#TIME = time


#
# Set the compiler and flags
#
'm4_ifelse(cbf_system,`OSX',`
#########################################################
#
#  Appropriate compiler definitions for MAC OS X
#  Also change defintion of DOWNLOAD
#
#########################################################
CC	= gcc
C++	= g++
CFLAGS  = -g -O2  -Wall -ansi -pedantic
F90C = gfortran
F90FLAGS = -g
F90LDFLAGS = -bind_at_load
M4FLAGS = -Dfcb_bytes_in_rec=131072
TIME = time
DOWNLOAD = /sw/bin/wget',
cbf_system,`OSX_gcc42',`
#########################################################
#
#  Appropriate compiler definitions for MAC OS X
#  with gcc 4.2
#  Also change defintion of DOWNLOAD
#
#########################################################
CC	= gcc
C++	= g++
CFLAGS  = -g -O2  -Wall -ansi -pedantic
F90C = gfortran
F90FLAGS = -g -fno-range-check
F90LDFLAGS = -bind_at_load
M4FLAGS = -Dfcb_bytes_in_rec=131072
TIME = time
DOWNLOAD = /sw/bin/wget',
cbf_system,`LINUX_gcc42',`
#########################################################
#
#  Appropriate compiler definitions for Linux
#  with gcc version 4.2
#
#########################################################
CC	= gcc
C++	= g++
CFLAGS  = -g -O2  -Wall -ansi -pedantic
F90C = gfortran
F90FLAGS = -g -fno-range-check
F90LDFLAGS = 
M4FLAGS = -Dfcb_bytes_in_rec=131072
TIME = time',
cbf_system,`LINUX',`
#########################################################
#
#  Appropriate compiler definitions for Linux
#
#########################################################
CC	= gcc
C++	= g++
CFLAGS  = -g -O2  -Wall -ansi -pedantic
F90C = gfortran
F90FLAGS = -g
F90LDFLAGS = 
M4FLAGS = -Dfcb_bytes_in_rec=131072
TIME = time',
cbf_system,`AIX',`
#########################################################
#
#  Appropriate compiler definitions for AIX
#
#########################################################
CC	= xlc
C++	= xlC
CFLAGS  = -g -O2  -Wall
F90C = xlf90
F90FLAGS = -g -qsuffix=f=f90
F90LDFLAGS = 
M4FLAGS = -Dfcb_bytes_in_rec=131072
TIME = time',
cbf_system,`MINGW',`
#########################################################
#
#  Appropriate compiler definitions for Mingw
#  Also change from symlinks to copies and
#  use default paths for utilities
#
#########################################################
CC	= gcc
C++	= g++
CFLAGS  = -g -O2  -Wall 
F90C = g95
F90FLAGS = -g
F90LDFLAGS = 
M4FLAGS = -Dfcb_bytes_in_rec=4096
TIME =
SLFLAGS = --use_cp
SHAR	= shar
AR	    =  ar
RANLIB  =  ranlib
DECOMPRESS =  bunzip2',
`
#########################################################
#
#  Appropriate compiler definitions for default (Linux)
#
#########################################################
CC	= gcc
C++	= g++
CFLAGS  = -g -O2  -Wall -ansi -pedantic
F90C = gfortran
F90FLAGS = -g
F90LDFLAGS = 
M4FLAGS = -Dfcb_bytes_in_rec=131072
TIME = time')`


#
# Directories
#
ROOT     = .
LIB      = $(ROOT)/lib
BIN      = $(ROOT)/bin
SRC      = $(ROOT)/src
INCLUDE  = $(ROOT)/include
M4       = $(ROOT)/m4
PYCBF    = $(ROOT)/pycbf
EXAMPLES = $(ROOT)/examples
DOC      = $(ROOT)/doc
GRAPHICS = $(ROOT)/html_graphics
DATADIR  = $(ROOT)/../CBFlib_$(VERSION)_Data_Files
INSTALLDIR  = $(HOME)

#
# URL from which to retrieve the data directory
#
DATAURL	 = http://arcib.dowling.edu/software/CBFlib/downloads/version_$(VERSION)/CBFlib_$(VERSION)_Data_Files.tar.gz


#
# Include directories
#
INCLUDES = -I$(INCLUDE) -I$(SRC)

######################################################################
#  You should not need to make modifications below this line         #
######################################################################

#
# Suffixes of files to be used or built
#
.SUFFIXES:	.c .o .f90 .m4

.m4.f90:
		m4 -P $(M4FLAGS) $< > $@

.f90.o:
		$(F90C) $(F90FLAGS) -c $< -o $@


#
# Common dependencies
#
COMMONDEP = Makefile

#
# Source files
#
SOURCE   =  $(SRC)/cbf.c               \
            $(SRC)/cbf_alloc.c         \
            $(SRC)/cbf_ascii.c         \
            $(SRC)/cbf_binary.c        \
            $(SRC)/cbf_byte_offset.c   \
            $(SRC)/cbf_canonical.c     \
            $(SRC)/cbf_codes.c         \
            $(SRC)/cbf_compress.c      \
            $(SRC)/cbf_context.c       \
            $(SRC)/cbf_file.c          \
            $(SRC)/cbf_lex.c           \
            $(SRC)/cbf_packed.c        \
            $(SRC)/cbf_predictor.c     \
            $(SRC)/cbf_read_binary.c   \
            $(SRC)/cbf_read_mime.c     \
            $(SRC)/cbf_simple.c        \
            $(SRC)/cbf_string.c        \
            $(SRC)/cbf_stx.c           \
            $(SRC)/cbf_tree.c          \
            $(SRC)/cbf_uncompressed.c  \
            $(SRC)/cbf_write.c         \
            $(SRC)/cbf_write_binary.c  \
            $(SRC)/md5c.c
 
F90SOURCE = $(SRC)/fcb_atol_wcnt.f90     \
            $(SRC)/fcb_ci_strncmparr.f90 \
            $(SRC)/fcb_exit_binary.f90   \
            $(SRC)/fcb_nblen_array.f90   \
            $(SRC)/fcb_next_binary.f90   \
            $(SRC)/fcb_open_cifin.f90    \
            $(SRC)/fcb_packed.f90        \
            $(SRC)/fcb_read_bits.f90     \
            $(SRC)/fcb_read_byte.f90     \
            $(SRC)/fcb_read_image.f90    \
            $(SRC)/fcb_read_line.f90     \
            $(SRC)/fcb_read_xds_i2.f90   \
            $(SRC)/fcb_skip_whitespace.f90 \
            $(EXAMPLES)/test_fcb_read_image.f90 \
            $(EXAMPLES)/test_xds_binary.f90
            
           
#
# Header files
#
HEADERS   =  $(INCLUDE)/cbf.h                  \
             $(INCLUDE)/cbf_alloc.h            \
             $(INCLUDE)/cbf_ascii.h            \
             $(INCLUDE)/cbf_binary.h           \
             $(INCLUDE)/cbf_byte_offset.h      \
             $(INCLUDE)/cbf_canonical.h        \
             $(INCLUDE)/cbf_codes.h            \
             $(INCLUDE)/cbf_compress.h         \
             $(INCLUDE)/cbf_context.h          \
             $(INCLUDE)/cbf_file.h             \
             $(INCLUDE)/cbf_lex.h              \
             $(INCLUDE)/cbf_packed.h           \
             $(INCLUDE)/cbf_predictor.h        \
             $(INCLUDE)/cbf_read_binary.h      \
             $(INCLUDE)/cbf_read_mime.h        \
             $(INCLUDE)/cbf_simple.h           \
             $(INCLUDE)/cbf_string.h           \
             $(INCLUDE)/cbf_stx.h              \
             $(INCLUDE)/cbf_tree.h             \
             $(INCLUDE)/cbf_uncompressed.h     \
             $(INCLUDE)/cbf_write.h            \
             $(INCLUDE)/cbf_write_binary.h     \
             $(INCLUDE)/global.h               \
             $(INCLUDE)/md5.h

#
# m4 macro files
#
M4FILES   = $(M4)/fcblib_defines.m4            \
            $(M4)/fcb_exit_binary.m4           \
            $(M4)/fcb_next_binary.m4           \
            $(M4)/fcb_open_cifin.m4            \
            $(M4)/fcb_packed.m4                \
            $(M4)/fcb_read_bits.m4             \
            $(M4)/fcb_read_image.m4            \
            $(M4)/fcb_read_xds_i2.m4           \
            $(M4)/test_fcb_read_image.m4       \
            $(M4)/test_xds_binary.m4


#
# Documentation files
#
DOCUMENTS = $(DOC)/CBFlib.pdf                   \
            $(DOC)/CBFlib.rtf                   \
            $(DOC)/CBFlib_NOTICES.html          \
            $(DOC)/CBFlib_NOTICES.txt           \
            $(DOC)/ChangeLog                    \
            $(DOC)/ChangeLog.html               \
            $(DOC)/MANIFEST                     \
            $(DOC)/example.html

#
# HTML Graphics files
#
JPEGS     = $(GRAPHICS)/CBFbackground.jpg      \
            $(GRAPHICS)/CBFbig.jpg             \
            $(GRAPHICS)/CBFbutton.jpg          \
            $(GRAPHICS)/cbflibbackground.jpg   \
            $(GRAPHICS)/cbflibbig.jpg          \
            $(GRAPHICS)/cbflibbutton.jpg       \
            $(GRAPHICS)/cifhome.jpg            \
            $(GRAPHICS)/iucrhome.jpg           \
            $(GRAPHICS)/noticeButton.jpg


#
# Default: instructions
#
default:
	@echo ''` ''`
	@echo ''`***************************************************************''`
	@echo ''` ''`
	@echo ''` PLEASE READ README and doc/CBFlib_NOTICES.txt''`
	@echo ''` ''`
	@echo ''` Before making the CBF library and example programs, check''`
	@echo ''` that the C compiler name and flags are correct:''`
	@echo ''` ''`
	@echo ''` The current values are:''`
	@echo ''` ''`
	@echo ''`   $(CC) $(CFLAGS)''`
	@echo ''` ''`
	@echo ''` Before installing the CBF library and example programs, check''`
	@echo ''` that the install directory is correct:''`
	@echo ''` ''`
	@echo ''` The current value :''`
	@echo ''` ''`
	@echo ''`   $(INSTALLDIR) ''`	
	@echo ''` ''`
	@echo ''` To compile the CBF library and example programs type:''`
	@echo ''` ''`
	@echo ''`   make clean''`
	@echo ''`   make all''`
	@echo ''` ''`
	@echo ''` To run a set of tests type:''`
	@echo ''` ''`
	@echo ''`   make tests''`
	@echo ''` ''`
	@echo ''` The tests assume that several data files are in the directory''` $(DATADIR)
	@echo ''` This directory can be obtained from''`
	@echo ''` ''`
	@echo ''` ''` $(DATAURL)
	@echo ''` ''`
	@echo ''` To clean up the directories type:''`
	@echo ''` ''`
	@echo ''`   make clean''`
	@echo ''` ''`
	@echo ''` To install the library and binaries type:''`
	@echo ''` ''`
	@echo ''`   make install''`
	@echo ''` ''`
	@echo ''`***************************************************************''`
	@echo ''` ''`

#
# Compile the library and examples
#
all:	$(LIB) $(BIN) $(SOURCE) $(F90SOURCE) $(HEADERS) symlinksdone \
		$(LIB)/libcbf.a          \
		$(LIB)/libfcb.a          \
		$(LIB)/libimg.a          \
        $(BIN)/convert_image     \
        $(BIN)/convert_minicbf   \
        $(BIN)/makecbf           \
        $(BIN)/img2cif           \
        $(BIN)/adscimg2cbf       \
        $(BIN)/cif2cbf           \
		$(BIN)/testcell          \
		$(BIN)/cif2c             \
		$(BIN)/testreals         \
		$(BIN)/testflat          \
		$(BIN)/testflatpacked    \
		$(BIN)/test_xds_binary   \
		$(BIN)/test_fcb_read_image
		
Makefiles: Makefile			 \
		Makefile_LINUX           \
		Makefile_LINUX_gcc42     \
		Makefile_OSX             \
		Makefile_OSX_gcc42       \
		Makefile_AIX             \
		Makefile_MINGW

Makefile_LINUX: $(M4)/Makefile.m4
		-cp Makefile_LINUX Makefile_LINUX_old
		m4 -P -Dcbf_system=LINUX $(M4)/Makefile.m4 > Makefile_LINUX 

Makefile_LINUX_gcc42: $(M4)/Makefile.m4
		-cp Makefile_LINUX_gcc42 Makefile_LINUX_gcc42_old
		m4 -P -Dcbf_system=LINUX_gcc42 $(M4)/Makefile.m4 > Makefile_LINUX_gcc42 

Makefile_OSX: $(M4)/Makefile.m4
		-cp Makefile_OSX Makefile_OSX_old
		m4 -P -Dcbf_system=OSX $(M4)/Makefile.m4 > Makefile_OSX 

Makefile_OSX_gcc42: $(M4)/Makefile.m4
		-cp Makefile_OSX_gcc42 Makefile_OSX_gcc42_old
		m4 -P -Dcbf_system=OSX_gcc42 $(M4)/Makefile.m4 > Makefile_OSX_gcc42 

Makefile_AIX: $(M4)/Makefile.m4
		-cp Makefile_AIX Makefile_AIX_old
		m4 -P -Dcbf_system=AIX $(M4)/Makefile.m4 > Makefile_AIX 

Makefile_MINGW: $(M4)/Makefile.m4
		-cp Makefile_MINGW Makefile_MINGW_old
		m4 -P -Dcbf_system=MINGW $(M4)/Makefile.m4 > Makefile_MINGW 
		
Makefile: $(M4)/Makefile.m4
		-cp Makefile Makefile_old
		m4 -P -Dcbf_system=default $(M4)/Makefile.m4 > Makefile 



symlinksdone:
	./.symlinks $(SLFLAGS)
	touch symlinksdone


install:  all $(INSTALLDIR) $(INSTALLDIR)/lib $(INSTALLDIR)/bin $(INSTALLDIR)/include
		-cp $(INSTALLDIR)/lib/libcbf.a $(INSTALLDIR)/lib/libcbf_old.a
		cp $(LIB)/libcbf.a $(INSTALLDIR)/lib/libcbf.a
		-cp $(INSTALLDIR)/lib/libimg.a $(INSTALLDIR)/lib/libimg_old.a
		cp $(LIB)/libimg.a $(INSTALLDIR)/lib/libimg.a
		-cp $(INSTALLDIR)/bin/convert_image $(INSTALLDIR)/bin/convert_image_old
		cp $(BIN)/convert_image $(INSTALLDIR)/bin/convert_image
		-cp $(INSTALLDIR)/bin/convert_minicbf $(INSTALLDIR)/bin/convert_minicbf_old
		cp $(BIN)/convert_minicbf $(INSTALLDIR)/bin/convert_minicbf
		-cp $(INSTALLDIR)/bin/makecbf $(INSTALLDIR)/bin/makecbf_old
		cp $(BIN)/makecbf $(INSTALLDIR)/bin/makecbf
		-cp $(INSTALLDIR)/bin/img2cif $(INSTALLDIR)/bin/img2cif_old
		cp $(BIN)/img2cif $(INSTALLDIR)/bin/img2cif
		-cp $(INSTALLDIR)/bin/adscimg2cbf $(INSTALLDIR)/bin/adscimg2cbf_old
		cp $(BIN)/adscimg2cbf $(INSTALLDIR)/bin/adscimg2cbf
		-cp $(INSTALLDIR)/bin/cif2cbf $(INSTALLDIR)/bin/cif2cbf_old
		cp $(BIN)/cif2cbf $(INSTALLDIR)/bin/cif2cbf
		-cp $(INSTALLDIR)/bin/cif2c $(INSTALLDIR)/bin/cif2c_old
		cp $(BIN)/cif2c $(INSTALLDIR)/bin/cif2c
		-cp $(INSTALLDIR)/bin/testreals $(INSTALLDIR)/bin/testreals_old
		cp $(BIN)/testreals $(INSTALLDIR)/bin/testreals
		-cp $(INSTALLDIR)/bin/testflat $(INSTALLDIR)/bin/testflat_old
		cp $(BIN)/testflat $(INSTALLDIR)/bin/testflat
		-cp $(INSTALLDIR)/bin/testflatpacked $(INSTALLDIR)/bin/testflatpacked_old
		cp $(BIN)/testflatpacked $(INSTALLDIR)/bin/testflatpacked
		-cp $(INSTALLDIR)/include/cbf.h $(INSTALLDIR)/include/cbf_old.h
		cp $(INCLUDE)/cbf.h $(INSTALLDIR)/include/cbf.h
		-cp $(INSTALLDIR)/include/cbf_simple.h $(INSTALLDIR)/include/cbf_simple_old.h
		cp $(INCLUDE)/cbf_simple.h $(INSTALLDIR)/include/cbf_simple.h
		chmod 644 $(INSTALLDIR)/lib/libcbf.a
		chmod 755 $(INSTALLDIR)/bin/convert_image
		chmod 755 $(INSTALLDIR)/bin/convert_minicbf
		chmod 755 $(INSTALLDIR)/bin/makecbf
		chmod 755 $(INSTALLDIR)/bin/img2cif
		chmod 755 $(INSTALLDIR)/bin/cif2cbf
		chmod 755 $(INSTALLDIR)/bin/cif2c
		chmod 755 $(INSTALLDIR)/bin/testreals
		chmod 755 $(INSTALLDIR)/bin/testflat
		chmod 755 $(INSTALLDIR)/bin/testflatpacked
		chmod 644 $(INSTALLDIR)/include/cbf.h
		chmod 644 $(INSTALLDIR)/include/cbf_simple.h
		
		
#
# Changes if a local gnu getopt is used
#

ifneq ($(GETOPT),SYSTEM)
CFLAGS		+=	-DGNUGETOPT
GOPTLIB		=	$(LIB)/getopt.o
GOPTINC		=	$(INCLUDE)/getopt.h
GOPTCLEAN	=	$(GETOPT)_clean
GOPTBUILD	=	$(GETOPT)_build

GOPTURL		=	http://arcib.dowling.edu/software/getopt/downloads/$(GETOPT).tar.gz


#
# getopt package
#
$(GETOPT):
		$(DOWNLOAD) $(GOPTURL)
		tar -xvf $(GETOPT).tar.gz
		-rm $(GETOPT).tar.gz

#
# build getopt
#
$(LIB)/getopt.o:		$(GOPTBUILD)
		(cd $(GETOPT); cp gnu/getopt.o ../$(LIB) )
$(INCLUDE)/getopt.h:	$(GOPTBUILD)
		(cd $(GETOPT); cp gnu/getopt.h ../$(INCLUDE) )
$(GOPTBUILD):  		$(GETOPT)
		(cd $(GETOPT); sed "1,\$$s/WITHOUT_GETTEXT=0/WITHOUT_GETTEXT=1/g" Makefile \
		  | sed "1,\$$s/WITH_GETTEXT/WITHOUT_GETTEXT/g"> Makefile_CBF; \
		  make -f Makefile_CBF GNUGETOPT=1 LIBCGETOPT=0 gnu/getopt.o; \
		  touch ../$(GOPTBUILD))
$(GOPTCLEAN):
		-(cd $(GETOPT); make clean)
		-rm $(GETOPT)/gnu/getopt.o
		-rm $(GOPTBUILD)
		
endif


#
# Directories
#
$(INSTALLDIR):
	mkdir -p $(INSTALLDIR)

$(INSTALLDIR)/lib:  $(INSTALLDIR)
	mkdir -p $(INSTALLDIR)/lib

$(INSTALLDIR)/bin:  $(INSTALLDIR)
	mkdir -p $(INSTALLDIR)/bin

$(INSTALLDIR)/include:  $(INSTALLDIR)
	mkdir -p $(INSTALLDIR)/include


$(LIB):
	mkdir $(LIB)

$(BIN):
	mkdir $(BIN)

#
# Parser
#
$(SRC)/cbf_stx.c: $(SRC)/cbf.stx.y
	bison $(SRC)/cbf.stx.y -o $(SRC)/cbf.stx.tab.c -d
	mv $(SRC)/cbf.stx.tab.c $(SRC)/cbf_stx.c
	mv $(SRC)/cbf.stx.tab.h $(INCLUDE)/cbf_stx.h

#
# CBF library
#
$(LIB)/libcbf.a: $(SOURCE) $(HEADERS) $(COMMONDEP)
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) -c $(SOURCE)
	$(AR) cr $@ *.o
	rm *.o
	$(RANLIB) $@

#
# IMG library
#
$(LIB)/libimg.a: $(EXAMPLES)/img.c $(HEADERS) $(COMMONDEP)
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) -c $(EXAMPLES)/img.c
	$(AR) cr $@ *.o
	rm *.o
	$(RANLIB) $@
	
#
# CBF and IMG libraries
#
CBF_IMG_LIBS:  $(LIB)/libcbf.a $(LIB)/libimg.a 	


#
# FCB library
#
$(LIB)/libfcb.a: $(F90SOURCE) $(COMMONDEP)
	$(F90C) $(F90FLAGS) -c $(F90SOURCE)
	$(AR) cr $@ *.o
	rm *.o
	$(RANLIB) $@

#
# Python bindings
#
$(PYCBF)/_pycbf.so: $(PYCBF)
	(cd $(PYCBF); python setup.py build; cp build/lib.*/_pycbf.so .) 


$(LIB)/_pycbf.so: $(PYCBF)/_pycbf.so
	cp $(PYCBF)/_pycbf.so $(LIB)/_pycbf.so

#
# F90SOURCE
#
$(SRC)/fcb_exit_binary.f90: $(M4)/fcb_exit_binary.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_exit_binary.m4) > $(SRC)/fcb_exit_binary.f90
$(SRC)/fcb_next_binary.f90: $(M4)/fcb_next_binary.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_next_binary.m4) > $(SRC)/fcb_next_binary.f90
$(SRC)/fcb_open_cifin.f90: $(M4)/fcb_open_cifin.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_open_cifin.m4)  > $(SRC)/fcb_open_cifin.f90
$(SRC)/fcb_packed.f90: $(M4)/fcb_packed.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_packed.m4)      > $(SRC)/fcb_packed.f90
$(SRC)/fcb_read_bits.f90: $(M4)/fcb_read_bits.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_read_bits.m4)   > $(SRC)/fcb_read_bits.f90
$(SRC)/fcb_read_image.f90: $(M4)/fcb_read_image.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_read_image.m4)  > $(SRC)/fcb_read_image.f90
$(SRC)/fcb_read_xds_i2.f90: $(M4)/fcb_read_xds_i2.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_read_xds_i2.m4) > $(SRC)/fcb_read_xds_i2.f90
$(EXAMPLES)/test_fcb_read_image.f90: $(M4)/test_fcb_read_image.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) test_fcb_read_image.m4) > $(EXAMPLES)/test_fcb_read_image.f90
$(EXAMPLES)/test_xds_binary.f90: $(M4)/test_xds_binary.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) test_xds_binary.m4) > $(EXAMPLES)/test_xds_binary.f90

#
# convert_image example program
#
$(BIN)/convert_image: $(LIB)/libcbf.a $(EXAMPLES)/convert_image.c $(EXAMPLES)/img.c \
					$(GOPTLIB)	$(GOPTINC)
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) \
              $(EXAMPLES)/convert_image.c $(EXAMPLES)/img.c $(GOPTLIB) -L$(LIB) \
	      -lcbf -lm -o $@
#
# convert_minicbf example program
#
$(BIN)/convert_minicbf: $(LIB)/libcbf.a $(EXAMPLES)/convert_minicbf.c \
					$(GOPTLIB)	$(GOPTINC)
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) \
              $(EXAMPLES)/convert_minicbf.c $(GOPTLIB) -L$(LIB) \
	      -lcbf -lm -o $@

#
# makecbf example program
#
$(BIN)/makecbf: $(LIB)/libcbf.a $(EXAMPLES)/makecbf.c $(LIB)/libimg.a
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) \
              $(EXAMPLES)/makecbf.c  -L$(LIB) \
	      -lcbf -lm -limg -o $@


#
# adscimg2cbf example program
#
$(BIN)/adscimg2cbf: $(LIB)/libcbf.a $(EXAMPLES)/adscimg2cbf.c $(EXAMPLES)/adscimg2cbf_sub.c
	$(CC) $(CFLAGS) -D_SVID_SOURCE $(INCLUDES) $(WARNINGS) \
              $(EXAMPLES)/adscimg2cbf.c $(EXAMPLES)/adscimg2cbf_sub.c  -L$(LIB) \
	      -lcbf -lm -o $@

#
# img2cif example program
#
$(BIN)/img2cif: $(LIB)/libcbf.a $(EXAMPLES)/img2cif.c $(LIB)/libimg.a \
					$(GOPTLIB) 	$(GOTPINC)
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) \
              $(EXAMPLES)/img2cif.c $(GOPTLIB) -L$(LIB) \
	      -lcbf -lm -limg -o $@

#
# cif2cbf example program
#
$(BIN)/cif2cbf: $(LIB)/libcbf.a $(EXAMPLES)/cif2cbf.c $(LIB)/libimg.a \
					$(GOPTLIB)	$(GOPTINC)
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) \
              $(EXAMPLES)/cif2cbf.c $(GOPTLIB) -L$(LIB) \
	      -lcbf -lm -limg -o $@
#
# testcell example program
#
$(BIN)/testcell: $(LIB)/libcbf.a $(EXAMPLES)/testcell.C
	$(C++) $(CFLAGS) $(INCLUDES) $(WARNINGS) \
              $(EXAMPLES)/testcell.C -L$(LIB) \
	      -lcbf -lm -o $@

#
# cif2c example program
#
$(BIN)/cif2c: $(LIB)/libcbf.a $(EXAMPLES)/cif2c.c
	$(C++) $(CFLAGS) $(INCLUDES) $(WARNINGS) \
              $(EXAMPLES)/cif2c.c -L$(LIB) \
	      -lcbf -lm -o $@

#
# sauter_test example program
#
$(BIN)/sauter_test: $(LIB)/libcbf.a $(EXAMPLES)/sauter_test.C
	$(C++) $(CFLAGS) $(INCLUDES) $(WARNINGS) \
              $(EXAMPLES)/sauter_test.C -L$(LIB) \
	      -lcbf -lm -o $@

#
# testreals example program
#
$(BIN)/testreals: $(LIB)/libcbf.a $(EXAMPLES)/testreals.c
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) \
              $(EXAMPLES)/testreals.c -L$(LIB) \
	      -lcbf -lm -o $@
#
# testflat example program
#
$(BIN)/testflat: $(LIB)/libcbf.a $(EXAMPLES)/testflat.c
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) \
              $(EXAMPLES)/testflat.c -L$(LIB) \
	      -lcbf -lm -o $@
#
# testflatpacked example program
#
$(BIN)/testflatpacked: $(LIB)/libcbf.a $(EXAMPLES)/testflatpacked.c
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) \
              $(EXAMPLES)/testflatpacked.c -L$(LIB) \
	      -lcbf -lm -o $@
	      
#
# test_xds_binary example program
#
$(BIN)/test_xds_binary: $(LIB)/libfcb.a $(EXAMPLES)/test_xds_binary.f90
	$(F90C) $(F90FLAGS) $(F90LDFLAGS) $(EXAMPLES)/test_xds_binary.f90 \
		-L$(LIB) -lfcb -o $@

#
# test_fcb_read_image example program
#
$(BIN)/test_fcb_read_image: $(LIB)/libfcb.a $(EXAMPLES)/test_fcb_read_image.f90
	$(F90C) $(F90FLAGS) $(F90LDFLAGS) $(EXAMPLES)/test_fcb_read_image.f90 \
		-L$(LIB) -lfcb -o $@

#
# Data files for tests
#

$(DATADIR):
		(cd ..; $(DOWNLOAD) $(DATAURL))
		(cd ..; tar -xvf CBFlib_$(VERSION)_Data_Files.tar.gz)
		-(cd ..; rm CBFlib_$(VERSION)_Data_Files.tar.gz)


example.mar2300:	$(DATADIR) $(DATADIR)/example.mar2300$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/example.mar2300$(CEXT) > example.mar2300


converted_flat_orig.cbf:	$(DATADIR) $(DATADIR)/converted_flat_orig.cbf$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/converted_flat_orig.cbf$(CEXT) > converted_flat_orig.cbf


adscconverted_flat_orig.cbf:	$(DATADIR) $(DATADIR)/adscconverted_flat_orig.cbf$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/adscconverted_flat_orig.cbf$(CEXT) > adscconverted_flat_orig.cbf


converted_orig.cbf:	$(DATADIR) $(DATADIR)/converted_orig.cbf$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/converted_orig.cbf$(CEXT) > converted_orig.cbf


adscconverted_orig.cbf:	$(DATADIR) $(DATADIR)/adscconverted_orig.cbf$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/adscconverted_orig.cbf$(CEXT) > adscconverted_orig.cbf


mb_LP_1_001.img:	$(DATADIR) $(DATADIR)/mb_LP_1_001.img$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/mb_LP_1_001.img$(CEXT) > mb_LP_1_001.img

insulin_pilatus6m.cbf:	$(DATADIR) $(DATADIR)/insulin_pilatus6m.cbf$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/insulin_pilatus6m.cbf$(CEXT) > insulin_pilatus6m.cbf

insulin_pilatus6m_prev.cbf:	$(DATADIR) $(DATADIR)/insulin_pilatus6m_prev.cbf$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/insulin_pilatus6m_prev.cbf$(CEXT) > insulin_pilatus6m_prev.cbf

insulin_pilatus6mconverted_orig.cbf: $(DATADIR) \
		$(DATADIR)/insulin_pilatus6mconverted_orig.cbf$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/insulin_pilatus6mconverted_orig.cbf$(CEXT) \
		> insulin_pilatus6mconverted_orig.cbf

9ins.cif:	$(DATADIR) $(DATADIR)/9ins.cif$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/9ins.cif$(CEXT) > 9ins.cif
		
testcell_orig.prt:	$(DATADIR) $(DATADIR)/testcell_orig.prt$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/testcell_orig.prt$(CEXT) > testcell_orig.prt

testrealin.cbf:	$(DATADIR) $(DATADIR)/testrealin.cbf$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/testrealin.cbf$(CEXT) > testrealin.cbf

testflatin.cbf:	$(DATADIR) $(DATADIR)/testflatin.cbf$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/testflatin.cbf$(CEXT) > testflatin.cbf

testflatpackedin.cbf:	$(DATADIR) $(DATADIR)/testflatpackedin.cbf$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/testflatpackedin.cbf$(CEXT) > testflatpackedin.cbf

test_xds_bin_testflatout_orig.out: 	$(DATADIR) \
		$(DATADIR)/test_xds_bin_testflatout_orig.out$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/test_xds_bin_testflatout_orig.out$(CEXT) \
		> test_xds_bin_testflatout_orig.out

test_xds_bin_testflatpackedout_orig.out: $(DATADIR) \
		$(DATADIR)/test_xds_bin_testflatpackedout_orig.out$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/test_xds_bin_testflatpackedout_orig.out$(CEXT) \
		> test_xds_bin_testflatpackedout_orig.out

test_fcb_read_testflatout_orig.out: $(DATADIR) \
		$(DATADIR)/test_fcb_read_testflatout_orig.out$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/test_fcb_read_testflatout_orig.out$(CEXT) \
		> test_fcb_read_testflatout_orig.out

test_fcb_read_testflatpackedout_orig.out: $(DATADIR) \
		$(DATADIR)/test_fcb_read_testflatpackedout_orig.out$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/test_fcb_read_testflatpackedout_orig.out$(CEXT) \
		> test_fcb_read_testflatpackedout_orig.out

adscconverted_flat_rev_orig.cbf: $(DATADIR) \
		$(DATADIR)/adscconverted_flat_rev_orig.cbf$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/adscconverted_flat_rev_orig.cbf$(CEXT) \
		> adscconverted_flat_rev_orig.cbf

mb_LP_1_001_orig.cbf: $(DATADIR) \
		$(DATADIR)/mb_LP_1_001_orig.cbf$(CEXT)
		$(DECOMPRESS) < $(DATADIR)/mb_LP_1_001_orig.cbf$(CEXT) \
		> mb_LP_1_001_orig.cbf

		
#
# Tests
#
tests:	$(LIB) $(BIN) symlinksdone basic extra

#
# Basic Tests
#

basic:	$(BIN)/makecbf $(BIN)/img2cif $(BIN)/cif2cbf example.mar2300
	$(BIN)/makecbf example.mar2300 makecbf.cbf
	$(BIN)/img2cif -c packed -m headers -d digest \
		-e base64  example.mar2300  img2cif_packed.cif
	$(BIN)/img2cif -c canonical -m headers -d digest \
		-e base64  example.mar2300  img2cif_canonical.cif
	$(BIN)/img2cif -c packed -m headers -d digest \
		-e none  example.mar2300  img2cif_packed.cbf
	$(BIN)/img2cif -c canonical -m headers -d digest \
		-e none  example.mar2300  img2cif_canonical.cbf
	$(BIN)/cif2cbf -e none -c packed \
		img2cif_canonical.cif cif2cbf_packed.cbf
	$(BIN)/cif2cbf -e none -c canonical \
		img2cif_packed.cif cif2cbf_canonical.cbf
	-cmp cif2cbf_packed.cbf    makecbf.cbf
	-cmp cif2cbf_packed.cbf    img2cif_packed.cbf
	-cmp cif2cbf_canonical.cbf img2cif_canonical.cbf

#
# Extra Tests
#
extra:	$(BIN)/convert_image $(BIN)/convert_minicbf $(BIN)/cif2cbf $(BIN)/testcell \
	$(BIN)/testreals $(BIN)/testflat $(BIN)/testflatpacked \
	$(BIN)/test_xds_binary $(BIN)/test_fcb_read_image $(BIN)/convert_minicbf \
	$(BIN)/sauter_test $(BIN)/adscimg2cbf\
	makecbf.cbf 9ins.cif example.mar2300 converted_orig.cbf mb_LP_1_001.img\
	adscconverted_flat_rev_orig.cbf mb_LP_1_001_orig.cbf\
	adscconverted_orig.cbf testcell_orig.prt testrealin.cbf \
	testflatin.cbf testflatpackedin.cbf \
	converted_flat_orig.cbf adscconverted_flat_orig.cbf \
	insulin_pilatus6mconverted_orig.cbf insulin_pilatus6m_prev.cbf\
	test_xds_bin_testflatout_orig.out test_xds_bin_testflatpackedout_orig.out \
	test_fcb_read_testflatout_orig.out test_fcb_read_testflatpackedout_orig.out \
	insulin_pilatus6m.cbf
	$(TIME) $(BIN)/cif2cbf -e hex -c none \
		makecbf.cbf cif2cbf_ehcn.cif
	$(TIME) $(BIN)/cif2cbf -e none -c packed \
		cif2cbf_ehcn.cif cif2cbf_encp.cbf
	-cmp makecbf.cbf cif2cbf_encp.cbf
	$(TIME) $(BIN)/cif2cbf -i 9ins.cif -o 9ins.cbf
	-cmp 9ins.cif 9ins.cbf
	$(TIME) $(BIN)/convert_image -F -c diffrn_data_frame=diffrn_frame_data example.mar2300 converted_flat.cbf
	-cmp converted_flat.cbf converted_flat_orig.cbf
	$(TIME) $(BIN)/convert_image -c diffrn_data_frame=diffrn_frame_data example.mar2300 converted.cbf
	-cmp converted.cbf converted_orig.cbf
	-$(TIME) $(BIN)/testcell < testcell.dat > testcell.prt
	-cmp testcell.prt testcell_orig.prt
	$(TIME) $(BIN)/convert_image -F -c diffrn_data_frame=diffrn_frame_data  -d adscquantum315 mb_LP_1_001.img adscconverted_flat.cbf
	-cmp adscconverted_flat.cbf adscconverted_flat_orig.cbf
	$(TIME) $(BIN)/convert_image -c diffrn_data_frame=diffrn_frame_data  -d adscquantum315 mb_LP_1_001.img adscconverted.cbf
	-cmp adscconverted.cbf adscconverted_orig.cbf
	$(TIME) $(BIN)/convert_image -F -c diffrn_data_frame=diffrn_frame_data  -d adscquantum315 \
	  -p template_adscquantum315_3072x3072_rev.cbf mb_LP_1_001.img adscconverted_flat_rev.cbf
	-cmp adscconverted_flat_rev.cbf adscconverted_flat_rev_orig.cbf
	$(TIME) $(BIN)/adscimg2cbf  --cbf_packed,flat mb_LP_1_001.img
	-cmp mb_LP_1_001.cbf mb_LP_1_001_orig.cbf
	$(TIME) $(BIN)/convert_minicbf -c diffrn_data_frame=diffrn_frame_data  -d pilatus6m insulin_pilatus6m.cbf insulin_pilatus6mconverted.cbf
	-cmp insulin_pilatus6mconverted.cbf insulin_pilatus6mconverted_orig.cbf
	$(TIME) $(BIN)/convert_minicbf -C SLS_1.0 -Q insulin_pilatus6m_prev.cbf insulin_pilatus6m_new.cbf
	-cmp insulin_pilatus6m.cbf insulin_pilatus6m_new.cbf
	$(TIME) $(BIN)/testreals
	-cmp testrealin.cbf testrealout.cbf
	$(TIME) $(BIN)/testflat
	-cmp testflatin.cbf testflatout.cbf
	$(TIME) $(BIN)/testflatpacked
	-cmp testflatpackedin.cbf testflatpackedout.cbf
	echo testflatout.cbf | $(TIME) $(BIN)/test_xds_binary > test_xds_bin_testflatout.out
	-diff -b -c test_xds_bin_testflatout.out test_xds_bin_testflatout_orig.out
	echo testflatpackedout.cbf | $(TIME) $(BIN)/test_xds_binary > test_xds_bin_testflatpackedout.out
	-diff -b -c test_xds_bin_testflatpackedout.out test_xds_bin_testflatpackedout_orig.out
	echo testflatout.cbf | $(TIME) $(BIN)/test_fcb_read_image  > test_fcb_read_testflatout.out
	-diff test_fcb_read_testflatout.out test_fcb_read_testflatout_orig.out
	echo testflatpackedout.cbf | $(TIME) $(BIN)/test_fcb_read_image > test_fcb_read_testflatpackedout.out
	-diff test_fcb_read_testflatpackedout.out test_fcb_read_testflatpackedout_orig.out
	$(TIME) $(BIN)/sauter_test

	
	
pycbftests:  $(PYCBF)/_pycbf.so
	(cd $(PYCBF); python pycbf_test1.py)
	(cd $(PYCBF); python pycbf_test2.py)
	(cd $(PYCBF); python pycbf_test3.py)

#
# Remove all non-source files
#
empty:
	@-rm -f  $(LIB)/libcbf.a
	@-rm -f  $(LIB)/libfcb.a
	@-rm -f  $(LIB)/libimg.a
	@-rm -f  $(LIB)/_pycbf.so
	@-rm -f  $(PYCBF)/_pycbf.so
	@-rm -f  $(PYCBF)/build/*/_pycbf.so
	@-rm -f  $(PYCBF)/build/src/cbf_simple.o
	@-rm -f  $(PYCBF)/build/*/pycbf_wrap.o
	@-rm -f  $(LIB)/getopt.o
	@-rm -f  $(INCLUDE)/getopt.h
	@-rm -f  $(BIN)/makecbf
	@-rm -f  $(BIN)/img2cif
	@-rm -f  $(BIN)/cif2cbf
	@-rm -f  $(BIN)/convert_image
	@-rm -f  $(BIN)/convert_minicbf
	@-rm -f  $(BIN)/test_fcb_read_image
	@-rm -f  $(BIN)/test_xds_binary
	@-rm -f  $(BIN)/testcell
	@-rm -f  $(BIN)/cif2c
	@-rm -f  $(BIN)/testreals
	@-rm -f  $(BIN)/testflat
	@-rm -f  $(BIN)/testflatpacked
	@-rm -f  $(BIN)/sauter_test
	@-rm -f  makecbf.cbf
	@-rm -f  img2cif_packed.cif
	@-rm -f  img2cif_canonical.cif
	@-rm -f  img2cif_packed.cbf
	@-rm -f  img2cif_canonical.cbf
	@-rm -f  img2cif_raw.cbf
	@-rm -f  cif2cbf_packed.cbf
	@-rm -f  cif2cbf_canonical.cbf
	@-rm -f  converted.cbf
	@-rm -f  adscconverted.cbf
	@-rm -f  converted_flat.cbf
	@-rm -f  adscconverted_flat.cbf
	@-rm -f  adscconverted_flat_rev.cbf
	@-rm -f  mb_LP_1_001.cbf
	@-rm -f  cif2cbf_ehcn.cif
	@-rm -f  cif2cbf_encp.cbf
	@-rm -f  9ins.cbf
	@-rm -f  9ins.cif
	@-rm -f  testcell.prt
	@-rm -f  example.mar2300
	@-rm -f  converted_orig.cbf
	@-rm -f  adscconverted_orig.cbf
	@-rm -f  converted_flat_orig.cbf
	@-rm -f  adscconverted_flat_orig.cbf
	@-rm -f  adscconverted_flat_rev_orig.cbf
	@-rm -f  mb_LP_1_001_orig.cbf
	@-rm -f  insulin_pilatus6mconverted_orig.cbf
	@-rm -f  insulin_pilatus6m_prev.cbf
	@-rm -f  insulin_pilatus6m_new.cbf
	@-rm -f  insulin_pilatus6mconverted.cbf
	@-rm -f  insulin_pilatus6m.cbf
	@-rm -f  testrealin.cbf
	@-rm -f  testrealout.cbf
	@-rm -f  testflatin.cbf
	@-rm -f  testflatout.cbf
	@-rm -f  testflatpackedin.cbf
	@-rm -f  testflatpackedout.cbf
	@-rm -f  test_fcb_read_testflatout.out
	@-rm -f  test_fcb_read_testflatpackedout.out
	@-rm -f  test_xds_bin_testflatpackedout.out
	@-rm -f  test_xds_bin_testflatout.out
	@-rm -f  test_fcb_read_testflatout_orig.out
	@-rm -f  test_fcb_read_testflatpackedout_orig.out
	@-rm -f  test_xds_bin_testflatpackedout_orig.out
	@-rm -f  test_xds_bin_testflatout_orig.out
	@-rm -f  mb_LP_1_001.img
	@-rm -f  9ins.cif
	@-rm -f  testcell_orig.prt
	@-rm -f  $(SRC)/fcb_exit_binary.f90
	@-rm -f  $(SRC)/fcb_next_binary.f90
	@-rm -f  $(SRC)/fcb_open_cifin.f90
	@-rm -f  $(SRC)/fcb_packed.f90
	@-rm -f  $(SRC)/fcb_read_bits.f90
	@-rm -f  $(SRC)/fcb_read_image.f90
	@-rm -f  $(SRC)/fcb_read_xds_i2.f90
	@-rm -f  $(EXAMPLES)/test_fcb_read_image.f90
	@-rm -f  $(EXAMPLES)/test_xds_binary.f90
	@-rm -f  symlinksdone
	./.undosymlinks
	
#
# Remove temporary files
#
clean:	$(GOPTCLEAN)
	@-rm -f core 
	@-rm -f *.o
	@-rm -f *.u
	@-rm -f ./lib/getopt.o
#
# Restore to distribution state
#
distclean:	clean empty

#
# Create a Shell Archive for distribution
#

shar:   $(DOCUMENTS) $(SOURCE) $(SRC)/cbf.stx $(HEADERS) \
         $(EXAMPLES)/img.c \
	 $(EXAMPLES)/img.h \
	 $(EXAMPLES)/makecbf.c $(EXAMPLES)/img2cif.c $(EXAMPLES)/cif2cbf.c \
	 $(EXAMPLES)/convert_image.c $(EXAMPLES)/testcell.C\
	 $(EXAMPLES)/template_adscquantum4_2304x2304.cbf \
	 $(EXAMPLES)/template_mar345_2300x2300.cbf \
	 README.html README Makefile \
	 $(JPEGS) 9ins.cif.gz
	-/bin/rm -f CBFlib.shar*
	$(SHAR) -p -o CBFlib.shar -n CBFlib.shar -M \
	 $(DOCUMENTS) $(SOURCE) $(SRC)/cbf.stx $(HEADERS) \
         $(EXAMPLES)/img.c \
	 $(EXAMPLES)/img.h \
	 $(EXAMPLES)/makecbf.c $(EXAMPLES)/img2cif.c $(EXAMPLES)/cif2cbf.c \
	 $(EXAMPLES)/convert_image.c \
	 $(EXAMPLES)/template_adscquantum4_2304x2304.cbf \
	 $(EXAMPLES)/template_mar345_2300x2300.cbf \
	 README.html README Makefile \
	 $(JPEGS) 9ins.cif.gz
	mv CBFlib.shar.01 CBFlib.shar
	compress CBFlib.shar

#
# Create a Tape Archive for distribution
#

tar:   $(DOCUMENTS) $(SOURCE) $(SRC)/cbf.stx $(HEADERS) \
         $(EXAMPLES)/img.c \
	 $(EXAMPLES)/img.h \
	 $(EXAMPLES)/makecbf.c $(EXAMPLES)/img2cif.c $(EXAMPLES)/cif2cbf.c \
	 $(EXAMPLES)/convert_image.c $(EXAMPLES)/testcell.C \
	 $(EXAMPLES)/testreals.c \
	 $(EXAMPLES)/testflat.c \
	 $(EXAMPLES)/testflatpacked.c \
	 $(EXAMPLES)/template_adscquantum4_2304x2304.cbf \
	 $(EXAMPLES)/template_mar345_2300x2300.cbf \
	 $(EXAMPLES)/template_adscquantum315_3072x3072.cbf \
	 README.html README Makefile \
	 $(JPEGS) 9ins.cif.gz testcell.dat testcell_orig.prt \
	 converted_orig.cbf adscconverted_original.cbf
	-/bin/rm -f CBFlib.tar*
	tar cvBf CBFlib.tar \
	 $(DOCUMENTS) $(SOURCE) $(SRC)/cbf.stx $(HEADERS) \
         $(EXAMPLES)/img.c \
	 $(EXAMPLES)/img.h \
	 $(EXAMPLES)/makecbf.c $(EXAMPLES)/img2cif.c $(EXAMPLES)/cif2cbf.c \
	 $(EXAMPLES)/convert_image.c $(EXAMPLES)/testcell.C $(EXAMPLES)/testreals.c \
	 $(EXAMPLES)/template_adscquantum4_2304x2304.cbf \
	 $(EXAMPLES)/template_mar345_2300x2300.cbf \
	 README.html README Makefile \
	 $(JPEGS) 9ins.cif.gz testcell.dat testcell_orig.prt \
	 converted_orig.cbf \
	 adscconverted_original.cbf
	 gzip --best CBFlib.tar
'