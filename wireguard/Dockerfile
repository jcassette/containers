FROM alpine:latest

RUN apk add --no-cache catatonit wireguard-tools

VOLUME /config

RUN rmdir /etc/wireguard
RUN ln -s /config /etc/wireguard

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/usr/bin/catatonit", "--", "/entrypoint.sh"]
CMD ["wg0"]
