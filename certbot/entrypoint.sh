#!/bin/sh

while true; do
    /usr/bin/certbot \
        --non-interactive \
        --config-dir /certbot/config \
        --logs-dir /certbot/logs \
        --work-dir /certbot/work \
        "$@"
    sleep 1d || exit $?
done
