#!/bin/sh
mkdir /tmp/unzip
cd /tmp/unzip
unzip /workdir/$1
mkdir /tmp/convert
ls *.jpeg | head -n 1 | xargs /convert.sh
ls *.jpeg | tail -n +2 | xargs -n 2 /convert.sh
set -x
convert /tmp/convert/*.jpeg /workdir/$1.pdf
