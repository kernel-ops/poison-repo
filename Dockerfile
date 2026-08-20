FROM ubuntu:22.04

RUN --mount=type=cache,target=/tmp/shared-cache \
    echo "cross tenant proof from another acc$(date +%s)" > /tmp/share-cache/marker.txt && \
    echo "marker written" && \
    cat /tmp/cache-marker/marker.txt

RUN echo "build done"
