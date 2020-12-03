FROM vookimedlo/ubuntu-clang:clang_focal
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

RUN add-apt-repository -y ppa:beineri/opt-qt-5.15.0-focal
RUN apt-get update -qq
RUN apt-get -y install qt515-meta-minimal

# This one is for "GL/gl.h", which is required by Qt
#
RUN apt-get -y install mesa-common-dev libglvnd-dev

RUN echo "source /opt/qt515/bin/qt515-env.sh" >> /etc/profile
RUN echo "export CMAKE_PREFIX_PATH=/opt/qt515/" >> /etc/profile
RUN echo "export QMAKESPEC=/opt/qt515/mkspecs/linux-clang" >> /etc/profile
