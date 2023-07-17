FROM vookimedlo/debian-clang:clang_bookworm

LABEL maintainer="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.authors="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.url="https://github.com/vookimedlo/docker-images"
LABEL org.opencontainers.image.vendor="Michal Duda"
LABEL org.opencontainers.image.title="Debian Bookworm CLANG based Qt development image"
LABEL org.opencontainers.image.description="Provides compiler, CMake, DEB packaging support, libraw, exiv2 and the distro-Qt development stuff."

ARG GIT_COMMIT
LABEL org.opencontainers.image.revision="${GIT_COMMIT}"

ARG BUILD_DATE
LABEL org.opencontainers.image.created="${BUILD_DATE}"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq && apt-get -y install qt6-base-dev qt6-base-dev-tools qt6-base-private-dev qmake6 qt6-image-formats-plugins linguist-qt6 qt6-tools-dev qt6-l10n-tools libopengl-dev libjxl-dev \
&& rm -rf /var/lib/apt/lists/* \
&&  if [ "$TARGETARCH" = "amd64" ]; \
    then echo "export QMAKESPEC=/usr/lib/x86_64-linux-gnu/qt6/mkspecs/linux-clang" >> /etc/profile; \
    elif [ "$TARGETARCH" = "arm64" ]; \
    then echo "export QMAKESPEC=/usr/lib/aarch64-linux-gnu/qt6/mkspecs/linux-clang" >> /etc/profile; \
    elif [ "$TARGETARCH/$TARGETVARIANT" = "arm/v7" ]; \
    then echo "export QMAKESPEC=/usr/lib/arm-linux-gnueabihf/qt6/mkspecs/linux-clang" >> /etc/profile; \
    fi
