#!/bin/sh
docker build -t asannou/chainmagick .
docker run -it --rm -v `dirname $1`:/workdir asannou/chainmagick /command.sh `basename $1`
