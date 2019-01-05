#!/bin/bash

set -e -x

python -m pip install --upgrade pip
pip install --upgrade setuptools wheel
pip install -r .ci/requirements.txt
