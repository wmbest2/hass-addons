ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base-python:3.10-alpine3.16
FROM $BUILD_FROM
MAINTAINER wmbest2@gmail.com

RUN apk add --no-cache gcc \
    linux-headers \
    libusb-dev \
    musl-dev \
    ffmpeg \
    netcat-openbsd \
    git

WORKDIR /app

COPY unifi-cam-proxy unifi-cam-proxy
RUN cd ./unifi-cam-proxy && pip install .

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
