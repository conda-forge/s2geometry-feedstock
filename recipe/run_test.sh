#!/bin/bash

# exit when any command fails
set -e
# print all commands
set -x

test -f ${PREFIX}/lib/libs2${SHLIB_EXT}
test -f ${PREFIX}/include/s2/s2cell.h
test -f ${PREFIX}/share/s2/s2Config.cmake


