FROM alpine:latest

RUN apk add --no-cache catatonit qbittorrent-nox

VOLUME /config

ENTRYPOINT ["/usr/bin/catatonit", "--", "/usr/bin/qbittorrent-nox"]
CMD ["--profile", "/config"]
