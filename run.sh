#!/bin/sh
rm -fr archive.7z
rm -fr archive
mkdir -p archive
bw export --output ./archive/bw.export.json --format json
7z a -t7z -m0=lzma2 -mx=9 -mfb=64 -md=32m -ms=on -mhe=on -p archive.7z archive
rm -fr archive
