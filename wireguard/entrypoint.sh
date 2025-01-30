#!/bin/sh

/usr/bin/wg-quick up "$WG_CONFIG"

sleep 1

/usr/bin/wg

while sleep 1; do
    : # nothing
done
