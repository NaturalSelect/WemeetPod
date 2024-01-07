#!/bin/bash

docker run \
    --rm \
    -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY \
    -e XMODIFIERS \
    -e GTK_IM_MODULE \
    -e QT_IM_MODULE \
    -e AUDIO_GID="$(getent group audio | cut -d: -f3)" \
    -e VIDEO_GID="$(getent group video | cut -d: -f3)" \
    -e XDG_RUNTIME_DIR \
    -v ${XDG_RUNTIME_DIR}:${XDG_RUNTIME_DIR} \
    -v /dev/dri:/dev/dri \
    -v /dev/video0 \
    -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native \
    --userns keep-id\
    --ipc host \
    -e HTTP_PROXY= \
    -e HTTPS_PROXY= \
    -v ~/.local/share/wemeetapp:/home/user/.local/share/wemeetapp \
    $@ \
    "naturalselect/wemeetpod:3.19.0"