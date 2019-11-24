FROM vookimedlo/fedora-gcc:gcc_30
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

RUN yum install -y qt5 qt5-qtbase-devel

RUN echo "export QMAKESPEC=/usr/lib64/qt5/mkspecs/linux-g++" >> /etc/profile
