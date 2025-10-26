FROM jrottenberg/ffmpeg:4.1-alpine
RUN apk add --no-cache chromium chromium-chromedriver bash
COPY stream.sh /stream.sh
RUN chmod +x /stream.sh
CMD ["/stream.sh"]
