#!/bin/bash
find . -iname "*.jpg" -type f -exec identify -format '%w %h %i \n' '{}' \; | awk '$1<3840 || $2<2160 {print $3}'
