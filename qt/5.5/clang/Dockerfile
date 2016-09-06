FROM gorzechowski/clang:trusty

RUN add-apt-repository -y ppa:beineri/opt-qt551-trusty

RUN apt-get update && apt-get -y install \
    qt55base \
    qt55websockets

RUN echo "source /opt/qt55/bin/qt55-env.sh" >> /etc/profile
RUN echo "export QMAKESPEC=/opt/qt55/mkspecs/linux-clang" >> /etc/profile
