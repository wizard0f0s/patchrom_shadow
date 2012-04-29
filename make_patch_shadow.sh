#!/bin/bash

. build/envsetup.sh

cd shadow

rm -rf .build

find . -name .directory -delete
find . -name *~ -delete
find . -name .fuse* -delete
find . -name .??*.kate-swp -delete

make

