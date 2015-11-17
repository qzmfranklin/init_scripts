#!/bin/bash

# This script is commented out because valgrind is not a standard component on
# Darwin systems. But it is nice to know how to install valgrind at all, in case
# we need to install it.

#svn co svn://svn.valgrind.org/valgrind/trunk valgrind
#cd valgrind
#./autogen.sh
#./configure --prefix=$(HOME)/opt/
#make -j4 install
