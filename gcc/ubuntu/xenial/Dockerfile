FROM ubuntu:xenial
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

RUN apt-get update && apt-get -y --allow-unauthenticated install \
    software-properties-common \
    g++   \
    gcc   \
    make  \
    cmake \
    git   \
    checkinstall \
    build-essential \
    automake \
    autoconf \
    libtool \
    pkg-config \
    dh-make \
    bzr-builddeb \
    git-buildpackage \
    moreutils \
&& rm -rf /var/lib/apt/lists/*
