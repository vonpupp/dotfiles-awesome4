#!/usr/bin/env bash

PID=$(pgrep -x "^redshift\$")
if [[ -z $PID ]]; then
    echo "Redshift not found, starting it"
    redshift&
else
    echo "Redshift running with pid: $PID, killing it"
    kill -15 $PID
fi
