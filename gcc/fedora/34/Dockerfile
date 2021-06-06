FROM fedora:34
LABEL maintainer="github@vookimedlo.cz"
LABEL homepage="https://github.com/vookimedlo/docker-images"

# Starting from the Fedora 31 - python is python3!!!
#
RUN yum -y update && yum -y install \
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
    desktop-file-utils
