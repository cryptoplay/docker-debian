# An debian Xenial Xerus container with helper scripts for installing packages
#
# todo: this is pretty much identical to cryptoplay/library-debian
#
FROM debian:8.8

RUN groupadd -g 911 user \
 && useradd -m -s /bin/bash -g 911 -u 911 app

ADD src/docker-apt-install.sh /usr/local/sbin/docker-apt-install

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >/etc/apt/sources.list.d/backports.list \
 && docker-apt-install apt-utils

ARG BUILD_DATE
ARG CI_BUILD_URL
ARG VCS_REF
ARG VERSION

LABEL \
    io.github.cryptoplay.build-date=$BUILD_DATE \
    io.github.cryptoplay.ci-build-url=$CI_BUILD_URL \
    io.github.cryptoplay.name="Debian" \
    io.github.cryptoplay.description="Our CryptoPlay Debian Base Image for Running in Docker Container" \
    io.github.cryptoplay.url="https://cryptoplay.github.io/" \
    io.github.cryptoplay.docker.dockerfile="/Dockerfile" \
    io.github.cryptoplay.license="Apache License 2.0" \
    io.github.cryptoplay.vcs-ref=$VCS_REF \
    io.github.cryptoplay.vcs-type="Git" \
    io.github.cryptoplay.vcs-url="https://github.com/cryptoplay/docker-debian.git" \
    io.github.cryptoplay.vendor="CryptoPlay" \
    io.github.cryptoplay.version=$VERSION
