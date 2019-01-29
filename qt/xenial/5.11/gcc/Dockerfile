FROM vookimedlo/ubuntu-gcc:gcc_xenial

RUN add-apt-repository -y ppa:beineri/opt-qt-5.11.3-xenial
RUN apt-get update -qq
RUN apt-get -y install qt511-meta-minimal

# This one is for "GL/gl.h", which is required by Qt
#
RUN apt-get -y install mesa-common-dev

RUN echo "source /opt/qt511/bin/qt511-env.sh" >> /etc/profile
RUN echo "export CMAKE_PREFIX_PATH=/opt/qt511/" >> /etc/profile
RUN echo "export QMAKESPEC=/opt/qt511/mkspecs/linux-g++" >> /etc/profile
