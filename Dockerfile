FROM ubuntu:22.04

ARG CACHEBUST=1

RUN --mount=type=cache,target=/tmp/shared-cache \
    echo "CROSS_TENANT_PROOF_xs542200_$(date +%s)" > /tmp/shared-cache/marker.txt && \
    cat /tmp/shared-cache/marker.txt

CMD echo "poison build ok"
