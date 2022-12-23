#!/usr/bin/with-contenv bashio

NVR_IP="$(bashio::config 'nvr_ip')"
CAM_IP="$(bashio::config 'cam_ip')"
TOKEN="$(bashio::config 'token')"
USERNAME="$(bashio::config 'username')"
PASSWORD="$(bashio::config 'password')"
CERT="$(bashio::config 'cert')"
FFMPEG_PARAMS="$(bashio::config 'ffmpeg_params')"

echo "Hello $NVR_IP"
