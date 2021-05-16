#!/bin/bash
cd "${0%/*}"
rm op25/gr-op25_repeater/apps/records/chan-*.id
for i in `find op25/gr-op25_repeater/apps/records -iname '*.wav'`
  do
    basename=`echo $i|sed s/.wav$//`
    sox -c 1 -r 8000 -b 16 -e signed-integer --endian little -t raw ${basename}.wav ${basename}.ogg
    if [ $? -eq 0 ]
      then
        rm ${basename}.wav
    fi
done

stty cols 203 rows 60
screen -AdmS PM-Metz -t receiver1 ./1.sh
screen -S PM-Metz -X screen -t receiver2 ./2.sh
screen -S PM-Metz -X screen -t recorder2 ./3.sh
screen -S PM-Metz -X screen -t recorder2 ./4.sh

