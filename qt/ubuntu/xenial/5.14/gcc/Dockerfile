FROM vookimedlo/ubuntu-gcc:gcc_xenial
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

RUN add-apt-repository -y ppa:beineri/opt-qt-5.14.2-xenial
RUN apt-get update -qq
RUN apt-get -y install qt514-meta-minimal

# This one is for "GL/gl.h", which is required by Qt
#
RUN apt-get -y install mesa-common-dev

RUN echo "source /opt/qt514/bin/qt514-env.sh" >> /etc/profile
RUN echo "export CMAKE_PREFIX_PATH=/opt/qt514/" >> /etc/profile
RUN echo "export QMAKESPEC=/opt/qt514/mkspecs/linux-g++" >> /etc/profile
