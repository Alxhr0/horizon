ARG BASE_IMAGE=kinoite-main
FROM ghcr.io/ublue-os/${BASE_IMAGE}:stable

COPY build.sh /tmp/build.sh
COPY scripts/shared/packages.sh /tmp/packages.sh

COPY files/shared /

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    /tmp/packages.sh && \
    ostree container commit && \
    #bootc container lint

