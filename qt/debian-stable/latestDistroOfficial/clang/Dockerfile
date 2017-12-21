FROM vookimedlo/debian-clang:clang_debian-stable

RUN apt-get update -qq
RUN apt-get -y install qt5-default

RUN echo "export QMAKESPEC=/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-clang" >> /etc/profile
