FROM vookimedlo/debian-clang:clang_bookworm
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

RUN apt-get update -qq && apt-get -y install qtbase6-dev qt6-qmake qtbase6-dev-tools qt6-image-formats-plugins \
&& rm -rf /var/lib/apt/lists/* \
&&  if [ "$TARGETARCH" = "amd64" ]; \
    then echo "export QMAKESPEC=/usr/lib/x86_64-linux-gnu/qt6/mkspecs/linux-clang" >> /etc/profile; \
    elif [ "$TARGETARCH" = "arm64" ]; \
    then echo "export QMAKESPEC=/usr/lib/aarch64-linux-gnu/qt6/mkspecs/linux-clang" >> /etc/profile; \
    elif [ "$TARGETARCH/$TARGETVARIANT" = "arm/v7" ]; \
    then echo "export QMAKESPEC=/usr/lib/arm-linux-gnueabihf/qt6/mkspecs/linux-clang" >> /etc/profile; \
    fi
