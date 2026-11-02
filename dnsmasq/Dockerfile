FROM alpine:latest

RUN apk add --no-cache catatonit dnsmasq

VOLUME /config

ENTRYPOINT ["/usr/bin/catatonit", "--", "/usr/sbin/dnsmasq", "--keep-in-foreground"]
CMD ["--conf-file=/config/dnsmasq.conf"]
