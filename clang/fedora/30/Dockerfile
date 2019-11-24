FROM fedora:30
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

RUN yum -y update && yum -y install \
    clang              \
    make               \
    cmake              \
    git                \
    rpm-build          \
    rpm-devel          \
    rpmlint            \
    python3            \
    python3-dateutil   \
    bash               \
    coreutils          \
    diffutils          \
    patch              \
    rpmdevtools        \
    desktop-file-utils


RUN echo "export CXX=clang++" >> /etc/profile
RUN echo "export CC=clang" >> /etc/profile
