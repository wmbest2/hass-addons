#!/usr/bin/with-contenv bashio

CONFIG_PATH=/data/options.json

NVR_IP="$(bashio::config 'nvr_ip')"
CAM_IP="$(bashio::config 'cam_ip')"
TOKEN="$(bashio::config 'token')"
USERNAME="$(bashio::config 'username')"
PASSWORD="$(bashio::config 'password')"
CERT="$(bashio::config 'cert')"
FFMPEG_PARAMS="$(bashio::config 'ffmpeg_params')"

temp_file=$(mktemp -p "/data")
trap "rm -f $temp_file" 0 2 3 15

$temp_file <<< $CERT

unifi-cam-proxy -H $NVR_IP -i $CAM_IP -c $temp_file -t $TOKEN \
    amcrest \
    -u $USERNAME \
    -p $PASSWORD \
    --motion-index 0 \
    --snapshot-channel 1 \
    --ffmpeg-args="$FFMPEG_PARAMS"

