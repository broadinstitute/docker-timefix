#!/bin/bash

NTPSERVER='0.north-america.pool.ntp.org'

if [ -n "${1}" ]; then
    NTPSERVER=$1
fi

echo "Syncing time from ${NTPSERVER}"
ntpdate $NTPSERVER
