#!/usr/bin/env bash

FIRMWARE_FILENAME=$1

echo "Starting process..."

openocd --file ./configs/openocd.cfg &
echo "OCD is up"
sleep 2

{
    echo "reset halt;"; sleep 1;
    echo "program {{$FIRMWARE_FILENAME}} reset verify;"; sleep 1;
    echo "reset"; sleep 1;
    echo "exit"; sleep 1;
} | telnet 127.0.0.1 4444

echo "Process is over!"

kill `lsof -t -i:4444`
kill -9 `pidof openocd`