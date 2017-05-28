debian Docker Image
=======

This git repo provides `docker-apt-install PACKAGE` helper for installing packages.
running [debian](https://www.debian.org/releases/jessie/) in a Docker container.

Docker needs extra steps to clean up images after installing packages (https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/) and often that apt mirrors failing so we decided to write a helper with Docker's best practices and retries. Use `docker-apt-install PACKAGE` instead of `apt-get install PACKAGE` and installs will be reliable and keep the image as small as possible.

Project:            https://github.com/cryptoplay/docker-debian<br/>
Docker image:       https://registry.hub.docker.com/u/cryptoplay/debian/<br/>

[![Download size](https://images.microbadger.com/badges/image/cryptoplay/debian.svg)](http://microbadger.com/images/cryptoplay/debian "View on microbadger.com")
[![Version](https://images.microbadger.com/badges/version/cryptoplay/debian.svg)](http://microbadger.com/images/cryptoplay/debian "View on microbadger.com")
[![Source code](https://images.microbadger.com/badges/commit/cryptoplay/debian.svg)](http://microbadger.com/images/cryptoplay/debian "View on microbadger.com")
[![Docker Registry](https://img.shields.io/docker/pulls/cryptoplay/debian.svg)](https://registry.hub.docker.com/u/cryptoplay/debian)&nbsp;
[![Circle CI](https://circleci.com/gh/cryptoplay/docker-debian.png?circle-token=ff3583e77b7a8e1c0eb24efe45aeb2aa53eb5e88)](https://circleci.com/gh/cryptoplay/docker-debian/tree/master 'View CI builds')

[![Throughput Graph](https://graphs.waffle.io/cryptoplay/docker-debian/throughput.svg)](https://waffle.io/cryptoplay/docker-debian/metrics)
