#!/usr/bin/env sh

go run ./

mv dlc.dat steven.black.dat

sha256sum steven.black.dat > steven.black.dat.sha256sum
