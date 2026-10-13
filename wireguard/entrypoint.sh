#!/bin/sh

/usr/bin/wg-quick up "$1"

sleep 1

/usr/bin/wg

while sleep 1; do
    : # nothing
done
