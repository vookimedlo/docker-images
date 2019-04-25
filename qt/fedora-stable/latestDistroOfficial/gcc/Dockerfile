FROM vookimedlo/fedora-gcc:gcc_fedora-stable

RUN yum install -y qt5 qt5-qtbase-devel

RUN echo "export QMAKESPEC=/usr/lib64/qt5/mkspecs/linux-g++" >> /etc/profile

# See - https://stackoverflow.com/questions/54330050/libqt5core-so-5-malformed-in-docker-fedora29
#
RUN "strip -R .note.ABI-tag /lib64/libQt5Core.so.5.11.3"
