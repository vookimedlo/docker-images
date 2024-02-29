FROM ubuntu:noble

LABEL maintainer="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.authors="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.url="https://github.com/vookimedlo/docker-images"
LABEL org.opencontainers.image.vendor="Michal Duda"
LABEL org.opencontainers.image.title="Ubuntu Noble Numbat CLANG image"
LABEL org.opencontainers.image.description="Provides compiler, CMake, DEB packaging support, libraw and exiv2."

ARG GIT_COMMIT
LABEL org.opencontainers.image.revision="${GIT_COMMIT}"

ARG BUILD_DATE
LABEL org.opencontainers.image.created="${BUILD_DATE}"

ENV TZ=UTC
ARG DEBIAN_FRONTEND=noninteractive
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
&&  apt-get update && apt-get -y --allow-unauthenticated install \
    software-properties-common \
    clang-18   \
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
    git-buildpackage \
    moreutils        \
    libraw-bin \
    libraw-dev \
    libexiv2-dev \
&& rm -rf /var/lib/apt/lists/* \
&& ln -sf /usr/bin/clang++-18 /usr/bin/clang++ && ln -sf /usr/bin/clang-18 /usr/bin/clang \
&& echo "export CXX=clang++" >> /etc/profile \
&& echo "export CC=clang" >> /etc/profile
