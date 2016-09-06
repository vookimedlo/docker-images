FROM gorzechowski/gcc:xenial

RUN add-apt-repository -y ppa:beineri/opt-qt561-xenial

RUN apt-get update && apt-get -y install \
    qt56base \
    qt56websockets

RUN echo "source /opt/qt56/bin/qt56-env.sh" >> /etc/profile
RUN echo "export QMAKESPEC=/opt/qt56/mkspecs/linux-g++" >> /etc/profile
