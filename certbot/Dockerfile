FROM alpine:edge

RUN apk add --no-cache catatonit certbot

VOLUME /certbot

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/usr/bin/catatonit", "--", "/entrypoint.sh"]
