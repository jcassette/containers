#!/bin/sh

for arg in "$@"; do
    /usr/bin/wg-quick up "$arg"
done

while sleep 60; do
    /usr/bin/wg
done
