#!/bin/bash
ffmpeg -re -stream_loop -1 \
    -i test.mp4 -c:v libx264 \
    -preset veryfast \
    -tune zerolatency \
    -c:a aac \
    -f rtsp \
    -rtsp_transport tcp \
    rtsp://mediamtx:8554/cam
