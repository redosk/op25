#!/bin/bash
cd ~/op25/op25/gr-op25_repeater/apps
./multi_rx.py -v 12 -c pm2-udp.json 2>&1 | tee /tmp/log-pm2
