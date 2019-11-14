FROM ubuntu:xenial

RUN apt-get update && apt-get -y install software-properties-common

RUN apt-get update && apt-get -y --allow-unauthenticated install \
    g++   \
    gcc   \
    make  \
    cmake \
    git

RUN apt-get update && apt-get -y --allow-unauthenticated install \
    checkinstall \
    build-essential \
    automake \
    autoconf \
    libtool \
    pkg-config \
    dh-make \
    bzr-builddeb \
    git-buildpackage \
    moreutils

