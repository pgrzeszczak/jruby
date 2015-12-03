#!/bin/bash

docker run --rm -ti \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -v $(pwd):/project \
    -w /project \
    pgrzeszczak/jruby \
    java -cp .:/usr/local/rvm/rubies/jruby-9.0.4.0/lib/jruby.jar "$@"
