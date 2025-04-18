#/usr/bin/env bash

docker buildx build \
    --tag "gentoo-plasma:$(date +"%Y%r%m")" \
    --build-arg MAKEOPTS="-j$(nproc)" \
    --load \
    .
