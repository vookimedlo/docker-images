FROM debian:bullseye-slim
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

ENV DEBIAN_FRONTEND=noninteractive

RUN echo "deb http://deb.debian.org/debian bullseye-backports main contrib non-free" >>/etc/apt/sources.list \
&&  apt-get update && apt-get -y --allow-unauthenticated install \
    software-properties-common          \
    clang-11                            \
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
    moreutils                           \
    libraw-bin \
    libraw-dev \
&& rm -rf /var/lib/apt/lists/*          \
&& ln -sf /usr/bin/clang++-11 /usr/bin/clang++ && ln -sf /usr/bin/clang-11 /usr/bin/clang \
&& echo "export CXX=clang++" >> /etc/profile \
&& echo "export CC=clang" >> /etc/profile
