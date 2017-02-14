#!/bin/sh

sudo tools/openocd -s tools -f raspberrypi-native.cfg -c "transport select swd;set WORKAREASIZE 0" -f nrf51.cfg -c "init; halt; program espruino_1v91.78_ngbeacon.hex; reset" -c "shutdown"
