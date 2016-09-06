FROM gorzechowski/clang:xenial

RUN add-apt-repository -y ppa:beineri/opt-qt57-xenial

RUN apt-get update && apt-get -y install \
    qt57base \
    qt57websockets

RUN echo "source /opt/qt57/bin/qt57-env.sh" >> /etc/profile
RUN echo "export QMAKESPEC=/opt/qt57/mkspecs/linux-clang" >> /etc/profile
