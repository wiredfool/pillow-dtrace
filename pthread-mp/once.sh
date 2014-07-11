#!/bin/bash

if [ ! -f /var/run/dtrace.$1.pid ] ; then
    touch /var/run/dtrace.$1.pid ] 
    /usr/sbin/dtrace -s /Users/erics/Pillow/pthread_pid.d $1 > threads.$1
fi
    