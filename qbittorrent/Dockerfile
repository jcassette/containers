FROM alpine:edge

RUN apk add qbittorrent-nox

VOLUME /config
VOLUME /downloads

ENV QBT_PROFILE=/config
ENV QBT_CONFIGURATION=
ENV QBT_WEBUI_PORT=8080
ENV QBT_TORRENTING_PORT=6881
ENV QBT_SAVE_PATH=/downloads

COPY ./entrypoint.sh /entrypoint.sh

CMD [ "/entrypoint.sh" ]
