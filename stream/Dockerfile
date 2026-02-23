FROM ubuntu:latest
RUN mkdir /stream
WORKDIR /stream
COPY ./stream.sh /stream/stream.sh
COPY ./test.mp4 /stream/test.mp4
COPY ./video.mp4 /stream/video.mp4
RUN apt update && apt upgrade -y
RUN apt install ffmpeg -y
RUN echo "initalizing: $STREAM"

CMD sh -c "./stream.sh $STREAM"
