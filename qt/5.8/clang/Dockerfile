FROM gorzechowski/clang:xenial

RUN add-apt-repository -y ppa:beineri/opt-qt58-xenial

RUN apt-get update && apt-get -y install \
    qt58base \
    qt58websockets

RUN echo "source /opt/qt58/bin/qt58-env.sh" >> /etc/profile
RUN echo "export QMAKESPEC=/opt/qt58/mkspecs/linux-clang" >> /etc/profile
