FROM alpine:latest

RUN apk add --no-cache catatonit wireguard-tools

VOLUME /config

RUN rmdir /etc/wireguard
RUN ln -s /config /etc/wireguard

COPY ./entrypoint.sh /entrypoint.sh
COPY ./healthcheck.sh /healthcheck.sh

ENTRYPOINT ["/usr/bin/catatonit", "--", "/entrypoint.sh"]
CMD ["wg0"]

HEALTHCHECK CMD ["/healthcheck.sh", "1.1.1.1"]
