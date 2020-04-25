FROM ubuntu:focal
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get -y --allow-unauthenticated install \
    software-properties-common \
    clang-10   \
    make      \
    cmake     \
    git       \
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

RUN ln -sf /usr/bin/clang++-10 /usr/bin/clang++ && ln -sf /usr/bin/clang-10 /usr/bin/clang

RUN echo "export CXX=clang++" >> /etc/profile
RUN echo "export CC=clang" >> /etc/profile
