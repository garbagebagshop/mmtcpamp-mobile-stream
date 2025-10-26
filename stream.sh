#!/bin/bash

URL="https://www.mmtcpamp.com/gold-silver-rate-today"
STREAM_KEY="YOUR_YOUTUBE_STREAM_KEY"
STREAM_URL="rtmp://a.rtmp.youtube.com/live2/${STREAM_KEY}"

# Launch headless Chrome in portrait mode
chromium-browser --headless --disable-gpu --window-size=720,1280 --remote-debugging-port=9222 &
sleep 5

# Stream to YouTube Live
ffmpeg -f x11grab -video_size 720x1280 -i :99 -f flv "$STREAM_URL"
