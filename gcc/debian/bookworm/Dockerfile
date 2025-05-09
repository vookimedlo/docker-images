FROM debian:bookworm-slim

LABEL maintainer="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.authors="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.url="https://github.com/vookimedlo/docker-images"
LABEL org.opencontainers.image.vendor="Michal Duda"
LABEL org.opencontainers.image.title="Debian Bookworm GCC image"
LABEL org.opencontainers.image.description="Provides compiler, CMake, DEB packaging support, libraw and exiv2."

ARG GIT_COMMIT
LABEL org.opencontainers.image.revision="${GIT_COMMIT}"

ARG BUILD_DATE
LABEL org.opencontainers.image.created="${BUILD_DATE}"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && && RUN apt-get -y --allow-unauthenticated reinstall libc-bin && apt-get -y --allow-unauthenticated install \
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
    libraw-bin                 \
    libraw-dev                 \
    libexiv2-dev               \
&& rm -rf /var/lib/apt/lists/*
