FROM vookimedlo/ubuntu-clang:clang_xenial
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

RUN add-apt-repository -y ppa:beineri/opt-qt-5.12.3-xenial
RUN apt-get update -qq
RUN apt-get -y install qt512-meta-minimal

# This one is for "GL/gl.h", which is required by Qt
#
RUN apt-get -y install mesa-common-dev

RUN echo "source /opt/qt512/bin/qt512-env.sh" >> /etc/profile
RUN echo "export CMAKE_PREFIX_PATH=/opt/qt512/" >> /etc/profile
RUN echo "export QMAKESPEC=/opt/qt512/mkspecs/linux-clang" >> /etc/profile
