FROM vookimedlo/ubuntu-clang:clang_jammy
LABEL maintainer="Michal Duda <github@vookimedlo.cz>" \
      org.opencontainers.image.authors="Michal Duda <github@vookimedlo.cz>" \
      org.opencontainers.image.url="https://github.com/vookimedlo/docker-images" \
      org.opencontainers.image.vendor="Michal Duda" \
      org.opencontainers.image.title="Ubuntu Jammy CLANG based Qt development image" \
      org.opencontainers.image.description="Provides compiler, CMake, DEB packaging support, libraw, exiv2 and the disto-Qt development stuff."

ARG GIT_COMMIT
LABEL org.opencontainers.image.revision="${GIT_COMMIT}"

ARG BUILD_DATE
LABEL org.opencontainers.image.created="${BUILD_DATE}"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq && apt-get -y install qt6-base-dev qt6-base-dev-tools qt6-base-private-dev qmake6 qt6-image-formats-plugins linguist-qt6 qt6-tools-dev qt6-l10n-tools qt6-tools-dev-tools libopengl-dev libegl1-mesa-dev libegl1-mesa libegl-mesa0 \
&& rm -rf /var/lib/apt/lists/* \
&&  if [ "$TARGETARCH" = "amd64" ]; \
    then echo "export QMAKESPEC=/usr/lib/x86_64-linux-gnu/qt6/mkspecs/linux-clang" >> /etc/profile; \
    elif [ "$TARGETARCH" = "arm64" ]; \
    then echo "export QMAKESPEC=/usr/lib/aarch64-linux-gnu/qt6/mkspecs/linux-clang" >> /etc/profile; \
    elif [ "$TARGETARCH/$TARGETVARIANT" = "arm/v7" ]; \
    then echo "export QMAKESPEC=/usr/lib/arm-linux-gnueabihf/qt6/mkspecs/linux-clang" >> /etc/profile; \
    fi
