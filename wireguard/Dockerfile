FROM alpine:edge

RUN apk add --no-cache catatonit wireguard-tools

VOLUME /config

ENV WG_CONFIG=/config/wg0.conf

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/usr/bin/catatonit", "--", "/entrypoint.sh"]
