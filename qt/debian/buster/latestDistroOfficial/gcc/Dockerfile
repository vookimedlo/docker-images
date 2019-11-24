FROM vookimedlo/debian-gcc:gcc_buster
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

RUN apt-get update -qq && apt-get -y install qt5-default qt5-image-formats-plugins \
&& rm -rf /var/lib/apt/lists/*

RUN echo "export QMAKESPEC=/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++" >> /etc/profile
