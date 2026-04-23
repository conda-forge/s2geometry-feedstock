#!/bin/bash

set -xe

export SETUPTOOLS_SCM_PRETEND_VERSION_FOR_S2GEOMETRY=$PKG_VERSION


$PYTHON -m pip install --no-deps --ignore-installed . -vv
