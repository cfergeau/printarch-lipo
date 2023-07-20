#!/bin/sh
#
GOARCH=amd64 GOOS=darwin go build -o printarch.amd64 .
GOARCH=arm64 GOOS=darwin go build -o printarch.arm64 .
lipo -create -output printarch printarch.amd64 printarch.arm64
