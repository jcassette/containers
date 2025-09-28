FROM alpine:latest

COPY <<EOF /etc/apk/repositories
https://dl-cdn.alpinelinux.org/alpine/edge/main
https://dl-cdn.alpinelinux.org/alpine/edge/community
EOF

RUN apk add --no-cache catatonit qbittorrent-nox

VOLUME /config
VOLUME /downloads

ENV QBT_PROFILE=/config
ENV QBT_CONFIGURATION=
ENV QBT_WEBUI_PORT=8080
ENV QBT_TORRENTING_PORT=6881
ENV QBT_SAVE_PATH=/downloads

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/usr/bin/catatonit", "--", "/entrypoint.sh"]
