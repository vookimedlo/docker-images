FROM debian:stable

ENV DEBIAN_FRONTEND=noninteractive

RUN echo "deb http://deb.debian.org/debian buster-backports main contrib non-free" >>/etc/apt/sources.list

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

