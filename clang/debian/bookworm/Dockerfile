FROM debian:bookworm
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y --allow-unauthenticated install \
    software-properties-common          \
    clang-14                            \
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
&& rm -rf /var/lib/apt/lists/*          \
&& ln -sf /usr/bin/clang++-14 /usr/bin/clang++ && ln -sf /usr/bin/clang-14 /usr/bin/clang \
&& echo "export CXX=clang++" >> /etc/profile \
&& echo "export CC=clang" >> /etc/profile
