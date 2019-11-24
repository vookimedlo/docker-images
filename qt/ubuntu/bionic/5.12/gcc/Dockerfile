FROM vookimedlo/ubuntu-gcc:gcc_bionic
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

RUN add-apt-repository -y ppa:beineri/opt-qt-5.12.3-bionic
RUN apt-get update -qq
RUN apt-get -y install qt512-meta-minimal

# This one is for "GL/gl.h", which is required by Qt
#
RUN apt-get -y install mesa-common-dev libglvnd-dev

RUN echo "source /opt/qt512/bin/qt512-env.sh" >> /etc/profile
RUN echo "export CMAKE_PREFIX_PATH=/opt/qt512/" >> /etc/profile
RUN echo "export QMAKESPEC=/opt/qt512/mkspecs/linux-g++" >> /etc/profile
