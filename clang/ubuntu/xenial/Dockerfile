FROM ubuntu:xenial
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

RUN apt-get update && apt-get -y --allow-unauthenticated install \
    software-properties-common \
    clang-4.0 \
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

RUN ln -sf /usr/bin/clang++-4.0 /usr/bin/clang++ && ln -sf /usr/bin/clang-4.0 /usr/bin/clang

RUN echo "export CXX=clang++" >> /etc/profile
RUN echo "export CC=clang" >> /etc/profile


