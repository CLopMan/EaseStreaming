#!/bin/bash
ffmpeg -re -stream_loop -1 \
    -i $1 \
    -c:v libx264 \
    -preset veryfast \
    -tune zerolatency \
    -c:a aac \
    -f rtsp \
    -rtsp_transport udp \
    rtsp://mediamtx:8554/$(basename -s .mp4 $STREAM)

