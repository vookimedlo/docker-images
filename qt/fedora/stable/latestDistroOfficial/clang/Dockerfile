FROM vookimedlo/fedora-clang:clang_stable
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

RUN yum install -y qt6-qtbase qt6-qtimageformats qt6-qtbase-devel qt6-linguist qt6-qttools-devel

RUN echo "export QMAKESPEC=/usr/lib64/qt6/mkspecs/linux-clang" >> /etc/profile

