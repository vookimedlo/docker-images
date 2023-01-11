FROM ubuntu:lunar
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
&&  apt-get update && apt-get -y --allow-unauthenticated install \
    software-properties-common \
    clang-13   \
    make       \
    cmake      \
    git        \
    checkinstall     \
    build-essential  \
    automake         \
    autoconf         \
    libtool          \
    pkg-config       \
    dh-make          \
    bzr-builddeb     \
    git-buildpackage \
    moreutils        \
    libraw-bin \
    libraw-dev \
&& rm -rf /var/lib/apt/lists/* \
&& ln -sf /usr/bin/clang++-13 /usr/bin/clang++ && ln -sf /usr/bin/clang-13 /usr/bin/clang \
&& echo "export CXX=clang++" >> /etc/profile \
&& echo "export CC=clang" >> /etc/profile
