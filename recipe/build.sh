#!/bin/bash
set -e

mkdir build
cd build

### Create Makefiles
cmake ${CMAKE_ARGS} \
      -DCMAKE_CXX_STANDARD=17 \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_INSTALL_LIBDIR=lib \
      -DCMAKE_BUILD_TYPE=Release \
      -DBUILD_SHARED_LIBS=ON \
      -DBUILD_EXAMPLES=OFF \
      -UGOOGLETEST_ROOT \
      $SRC_DIR

### Build
cmake --build . -- -j${CPU_COUNT}

### Install
cmake --build . -- install
