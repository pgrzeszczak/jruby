#!/bin/bash

echo "Running benchmark $@ on ruby:"

docker run --rm -ti \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -v $(pwd):/project \
    -w /project \
    pgrzeszczak/jruby:ruby \
    bash -lc "time ruby \"$@\""

echo "Running benchmark $@ on jruby:"

docker run --rm -ti \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -v $(pwd):/project \
    -w /project \
    pgrzeszczak/jruby:ruby \
    bash -lc "time jruby \"$@\""