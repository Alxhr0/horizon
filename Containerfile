ARG BASE_IMAGE=bazzite
FROM ghcr.io/ublue-os/${BASE_IMAGE}:stable

COPY build.sh /tmp/build.sh

COPY files/shared /

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit && \
    bootc container lint

