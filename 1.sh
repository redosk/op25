#!/bin/bash
cd op25/gr-op25_repeater/apps
./multi_rx.py -v 12 -c pm1-udp.json 2>&1 | tee /tmp/log-pm-1
