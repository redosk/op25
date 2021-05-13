#!/bin/bash
cd /home/redox/op25
stty cols 203 rows 60
screen -AdmS PM-Metz -t receiver1 ./1.sh
screen -S PM-Metz -X screen -t receiver2 ./2.sh
screen -S PM-Metz -X screen -t recorder2 ./3.sh
screen -S PM-Metz -X screen -t recorder2 ./4.sh

