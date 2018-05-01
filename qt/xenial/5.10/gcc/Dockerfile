FROM vookimedlo/ubuntu-gcc:gcc_xenial

RUN add-apt-repository -y ppa:beineri/opt-qt-5.10.1-xenial
RUN apt-get update -qq
RUN apt-get -y install qt510-meta-minimal

# This one is for "GL/gl.h", which is required by Qt
#
RUN apt-get -y install mesa-common-dev

RUN echo "source /opt/qt510/bin/qt510-env.sh" >> /etc/profile
RUN echo "export CMAKE_PREFIX_PATH=/opt/qt510/" >> /etc/profile
RUN echo "export QMAKESPEC=/opt/qt510/mkspecs/linux-g++" >> /etc/profile
