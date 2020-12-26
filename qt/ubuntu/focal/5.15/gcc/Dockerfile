FROM vookimedlo/ubuntu-gcc:gcc_focal
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

RUN add-apt-repository -y ppa:beineri/opt-qt-5.15.2-focal
RUN apt-get update -qq

# The qt515-meta-minimal package no longer exists, so we will install packages according to the content of the QT 5.14
# qt514base qt514declarative qt514xmlpatterns qt514webengine
#
RUN apt-get -y install qt515base qt515declarative qt515xmlpatterns qt515webengine

# This one is for "GL/gl.h", which is required by Qt
#
RUN apt-get -y install mesa-common-dev libglvnd-dev

RUN echo "source /opt/qt515/bin/qt515-env.sh" >> /etc/profile
RUN echo "export CMAKE_PREFIX_PATH=/opt/qt515/" >> /etc/profile
RUN echo "export QMAKESPEC=/opt/qt515/mkspecs/linux-g++" >> /etc/profile
