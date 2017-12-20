FROM ubuntu:xenial

RUN apt-get update && apt-get -y install software-properties-common

RUN apt-get update && apt-get -y --allow-unauthenticated install \
    clang-4.0 \
    make      \
    cmake     \
    git

RUN ln -sf /usr/bin/clang++-4.0 /usr/bin/clang++ && ln -sf /usr/bin/clang-4.0 /usr/bin/clang