# Streaming play arround

Basic web interface for mediamtx server. Combine nginx proxy with mediamtx to connect easily through web based interface to rtsp streaming.

## How it works
- ffmpeg: publish a rstp stream
    - **udp**
    - H.264 encoding
- mediamtx: acts as media server. restreams using HLS
- nginx: severs a basic web interface with the streaming

## Docker
Everything is contained in dockers, you can launch the whole system using the following command:

```bash
docker compose up
```

### containers
#### nginx
Serves as basic proxy
#### mediamtx
Contains the media server
#### Simulators
Both stream\_seal and stream\_micro acts as streaming simulators
- Cannot stream in the same path!

