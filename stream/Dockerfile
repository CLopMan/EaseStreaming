FROM ubuntu:latest
RUN mkdir /stream
WORKDIR /stream
COPY ./stream.sh /stream/stream.sh
COPY ./test.mp4 /stream/test.mp4
RUN apt update && apt upgrade -y
RUN apt install ffmpeg -y

CMD ["./stream.sh"]
