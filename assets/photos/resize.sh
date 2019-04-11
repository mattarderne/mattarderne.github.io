#!/bin/bash

for f in originals/*.jpg; do
    name=$(echo $f);
    out=$name.jpg
    if [ ! -f $out ]; then
        convert $f -resize 1600x1600 -quality 70 $out
    fi
done
