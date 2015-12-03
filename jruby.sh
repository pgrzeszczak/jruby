#!/bin/bash

docker run --rm -ti \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd):/project \
    -w /project \
    pgrzeszczak/jruby \
    bash -lc "jruby \"$@\""