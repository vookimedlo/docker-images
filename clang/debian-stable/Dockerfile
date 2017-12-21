FROM debian:stable

RUN apt-get update && apt-get -y install software-properties-common

RUN apt-get update && apt-get -y --allow-unauthenticated install \
    clang-3.8 \
    make      \
    cmake     \
    git

RUN ln -sf /usr/bin/clang++-3.8 /usr/bin/clang++ && ln -sf /usr/bin/clang-3.8 /usr/bin/clang