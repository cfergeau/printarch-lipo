#!/bin/sh

./build.sh
echo "lipo: $(./printarch.lipo)"
echo "makefat: $(./printarch.makefat)"
