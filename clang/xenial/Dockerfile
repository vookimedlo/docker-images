FROM ubuntu:xenial

RUN apt-get update && apt-get -y install software-properties-common

RUN apt-get update && apt-get -y --allow-unauthenticated install \
    clang-4.0 \
    make      \
    cmake     \
    git

RUN ln -sf /usr/bin/clang++-4.0 /usr/bin/clang++ && ln -sf /usr/bin/clang-4.0 /usr/bin/clang

RUN echo "export CXX=clang++" >> /etc/profile
RUN echo "export CC=clang" >> /etc/profile

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

