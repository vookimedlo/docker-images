FROM debian:stable

ENV DEBIAN_FRONTEND=noninteractive

RUN echo "deb http://deb.debian.org/debian buster-backports main contrib non-free" >>/etc/apt/sources.list

RUN apt-get update && apt-get -y --allow-unauthenticated install \
    software-properties-common          \
    clang-7                             \
    make                                \
    cmake                               \
    git                                 \
    checkinstall                        \
    build-essential                     \
    automake                            \
    autoconf                            \
    libtool                             \
    pkg-config                          \
    dh-make                             \
    bzr-builddeb                        \
    git-buildpackage                    \
    moreutils

RUN ln -sf /usr/bin/clang++-7 /usr/bin/clang++ && ln -sf /usr/bin/clang-7 /usr/bin/clang

RUN echo "export CXX=clang++" >> /etc/profile
RUN echo "export CC=clang" >> /etc/profile



