FROM debian:bullseye
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

ENV DEBIAN_FRONTEND=noninteractive

RUN echo "deb http://deb.debian.org/debian bullseye-backports main contrib non-free" >>/etc/apt/sources.list

RUN apt-get update && apt-get -y --allow-unauthenticated install \
    software-properties-common \
    g++                        \
    gcc                        \
    make                       \
    cmake                      \
    git                        \
    checkinstall               \
    build-essential            \
    automake                   \
    autoconf                   \
    libtool                    \
    pkg-config                 \
    dh-make                    \
    bzr-builddeb               \
    git-buildpackage           \
    moreutils                  \
&& rm -rf /var/lib/apt/lists/*
