#!/bin/bash

docker run --rm -ti \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -v $(pwd):/project \
    -w /project \
    pgrzeszczak/jruby \
    java "$@"
