FROM ubuntu:22.04

ARG CACHEBUST=1

RUN --mount=type=cache,target=/tmp/shared-cache \
    echo "cross tenant proof from another acc$(date +%s)" > /tmp/shared-cache/marker.txt && \
    echo "marker written" && \
    cat /tmp/shared-cache/marker.txt

cmd echo "build ok"
