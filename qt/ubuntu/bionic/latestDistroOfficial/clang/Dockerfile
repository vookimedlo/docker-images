FROM vookimedlo/ubuntu-clang:clang_bionic

RUN apt-get update -qq
RUN apt-get -y install qt5-default qt5-image-formats-plugins

RUN echo "export QMAKESPEC=/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-clang" >> /etc/profile
