FROM ubuntu:kinetic
LABEL maintainer="Michal Duda <github@vookimedlo.cz>" \
      org.opencontainers.image.authors="Michal Duda <github@vookimedlo.cz>" \
      org.opencontainers.image.url="https://github.com/vookimedlo/docker-images" \
      org.opencontainers.image.vendor="Michal Duda" \
      org.opencontainers.image.title="Ubuntu Kinetic CLANG Image" \
      org.opencontainers.image.description="Provides compiler, CMake, DEB packaging support, libraw and exiv2."

ARG GIT_COMMIT
LABEL org.opencontainers.image.revision="${GIT_COMMIT}"

ARG BUILD_DATE
LABEL org.opencontainers.image.created="${BUILD_DATE}"

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
&&  apt-get update && apt-get -y --allow-unauthenticated install \
    software-properties-common \
    clang-14   \
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
    libexiv2-dev \
&& rm -rf /var/lib/apt/lists/* \
&& ln -sf /usr/bin/clang++-14 /usr/bin/clang++ && ln -sf /usr/bin/clang-14 /usr/bin/clang \
&& echo "export CXX=clang++" >> /etc/profile \
&& echo "export CC=clang" >> /etc/profile
