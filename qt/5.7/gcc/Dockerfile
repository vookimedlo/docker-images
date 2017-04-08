FROM gorzechowski/gcc:xenial

RUN add-apt-repository -y ppa:beineri/opt-qt571-xenial

RUN apt-get update && apt-get -y install \
    qt57base \
    qt57websockets

RUN echo "source /opt/qt57/bin/qt57-env.sh" >> /etc/profile
RUN echo "export QMAKESPEC=/opt/qt57/mkspecs/linux-g++" >> /etc/profile
