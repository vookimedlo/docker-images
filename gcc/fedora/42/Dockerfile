FROM fedora:42

LABEL maintainer="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.authors="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.url="https://github.com/vookimedlo/docker-images"
LABEL org.opencontainers.image.vendor="Michal Duda"
LABEL org.opencontainers.image.title="Fedora 42 GCC image"
LABEL org.opencontainers.image.description="Provides compiler, CMake, RPM packaging support, libraw and exiv2."

ARG GIT_COMMIT
LABEL org.opencontainers.image.revision="${GIT_COMMIT}"

ARG BUILD_DATE
LABEL org.opencontainers.image.created="${BUILD_DATE}"

# Starting from the Fedora 31 - python is python3!!!
#
RUN dnf -y update && dnf -y install \
    gcc               \
    gcc-c++           \
    make              \
    cmake             \
    git               \
    rpm-build         \
    rpm-devel         \
    rpmlint           \
    python            \
    python3-dateutil  \
    bash              \
    coreutils         \
    diffutils         \
    patch             \
    rpmdevtools       \
    desktop-file-utils \
    LibRaw             \
    LibRaw-devel       \
    exiv2-libs         \
    exiv2-devel

