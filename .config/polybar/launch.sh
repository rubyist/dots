#!/bin/bash

killall -q polybar
polybar thicc 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
