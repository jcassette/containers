#!/bin/sh

set -e

for arg in "$@"; do
    wg-quick up "$arg"
done

while sleep 60; do
    wg
done
