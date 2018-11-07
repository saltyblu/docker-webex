#!/usr/bin/env bash

#docker build -t webex .

# for unix:
xhost +local:

docker run -ti \
    --env DISPLAY="unix$DISPLAY" \
    --privileged \
    --volume /dev/snd:/dev/snd \
    --volume /tmp/.X11-unix:/tmp/.X11-unix \
    urlaub/webex "/usr/bin/firefox"
