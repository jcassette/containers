FROM alpine:latest AS builder

RUN apk add --no-cache xcaddy

RUN xcaddy build \
    --output /usr/sbin/caddy \
    --with github.com/caddy-dns/ovh

# --------

FROM alpine:latest

RUN apk add --no-cache ca-certificates catatonit

COPY --from=builder /usr/sbin/caddy /usr/sbin/caddy

VOLUME /config
VOLUME /data

ENV XDG_CONFIG_HOME=/config
ENV XDG_DATA_HOME=/data

ENTRYPOINT ["/usr/bin/catatonit", "--", "/usr/sbin/caddy"]
CMD ["run", "--config", "/config/Caddyfile"]
