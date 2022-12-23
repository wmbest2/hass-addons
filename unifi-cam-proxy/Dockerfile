ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:3.16
FROM $BUILD_FROM as builder
MAINTAINER wmbest2@gmail.com
WORKDIR /app

ENV LANG C.UTF-8

# Copied with minor edits from https://github.com/hertzg/rtl_433_docker/blob/master/images/alpine/build-context/Dockerfile
RUN apk add --no-cache gcc libc-dev linux-headers libusb-dev
RUN apk add --no-cache ffmpeg=4.1.6-r0 netcat-openbsd git

RUN pip install unifi-cam-proxy

# Run script
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
