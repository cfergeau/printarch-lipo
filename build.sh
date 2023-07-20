#!/bin/sh
#
GOARCH=amd64 GOOS=darwin go build -o printarch.amd64 .
GOARCH=arm64 GOOS=darwin go build -o printarch.arm64 .
lipo -create -output printarch.lipo printarch.amd64 printarch.arm64

# now try with makefat instead of lipo
go get github.com/randall77/makefat
GOBIN=$(pwd) go install github.com/randall77/makefat
./makefat printarch.makefat printarch.amd64 printarch.arm64
