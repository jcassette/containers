FROM alpine:latest

RUN apk add --no-cache catatonit certbot certbot-dns openssl

VOLUME /certbot

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/usr/bin/catatonit", "--", "/entrypoint.sh"]
