#!/bin/sh

set -e

interfaces=$(wg show interfaces)

for iface in $interfaces; do
    ping -c 1 -I $iface "$@" >/dev/null || exit $?
done
