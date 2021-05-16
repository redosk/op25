#!/bin/bash

cd "${0%/*}"

for i in `find records -iname '*.finished'`
  do
    basename=`echo $i|sed s/.finished//`
    sox -c 1 -r 8000 -b 16 -e signed-integer --endian little -t raw ${basename}.wav ${basename}.ogg
    if [ $? -eq 0 ]
      then
        rm ${basename}.wav
        rm ${basename}.finished
    fi
done
