FROM vookimedlo/fedora-clang:clang_44

LABEL maintainer="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.authors="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.url="https://github.com/vookimedlo/docker-images"
LABEL org.opencontainers.image.vendor="Michal Duda"
LABEL org.opencontainers.image.title="Fedora 44 CLANG based Qt development image"
LABEL org.opencontainers.image.description="Provides compiler, CMake, RPM packaging support, libraw, exiv2 and the distro-Qt development stuff."

ARG GIT_COMMIT
LABEL org.opencontainers.image.revision="${GIT_COMMIT}"

ARG BUILD_DATE
LABEL org.opencontainers.image.created="${BUILD_DATE}"

RUN dnf install -y qt6-qtbase qt6-qtimageformats qt6-qtbase-devel qt6-linguist qt6-qttools-devel libjxl-devel

RUN echo "export QMAKESPEC=/usr/lib64/qt6/mkspecs/linux-clang" >> /etc/profile

