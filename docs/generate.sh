#!/usr/bin/env bash

set -ex

cd docs

rm -rf build
mkdir build

odin doc . -all-packages -doc-format

cd build

odin-doc ../docs.odin-doc ../odin-doc.json

cd ..

rm docs.odin-doc

cd ..
