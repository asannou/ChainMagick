#!/bin/sh
GRAYSCALE='-type GrayScale'
UNSHARP='-unsharp 2x1.4+0.5+0'
GEOMETRY='-geometry 784x1135'
COLOR='rgb(240,240,240)'
POINT='point 0,0'
if [ -z "$2" ] ; then
  ROTATE='-rotate 180'
else
  ROTATE='-rotate 90'
  APPEND='-append'
fi
ROTATE2='-rotate 180'
set -x
convert $ROTATE -fill "$COLOR" -draw "$POINT" $ROTATE2 -draw "$POINT" $APPEND $GRAYSCALE $UNSHARP $GEOMETRY $1 $2 /tmp/convert/$1
