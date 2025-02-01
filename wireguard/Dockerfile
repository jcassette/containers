FROM alpine:edge

RUN apk add --no-cache wireguard-tools

VOLUME /config

ENV WG_CONFIG=/config/wg0.conf

COPY ./entrypoint.sh /entrypoint.sh

CMD [ "/entrypoint.sh" ]
