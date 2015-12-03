#!/bin/bash

docker run --rm -ti \
    -v $(pwd):/project \
    -w /project \
    pgrzeszczak/jruby \
    bash -ic "jruby \"$@\""