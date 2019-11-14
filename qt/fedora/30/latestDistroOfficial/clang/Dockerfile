FROM vookimedlo/fedora-clang:clang_30

RUN yum install -y qt5 qt5-qtbase-devel

RUN echo "export QMAKESPEC=/usr/lib64/qt5/mkspecs/linux-clang" >> /etc/profile
