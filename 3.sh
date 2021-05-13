#!/bin/bash
#TS2=`date +%Y-%m-%d-%H-%M-%S`
#nc -kluvw 1 127.0.0.1 56120 > /tmp/${TS2}-PM1.audio
cd ~/op25/op25/gr-op25_repeater/apps
./pm1.liq
