FROM fedora:latest

RUN yum -y update

RUN yum -y install \
    gcc            \
    gcc-c++        \
    make           \
    cmake          \
    git

# RPM related
# Starting from the Fedora 31 - python is python3!!!
#
RUN yum -y install \
    rpm-build \
    rpm-devel \
    rpmlint \
    python \
    python3-dateutil \
    bash \
    coreutils \
    diffutils \
    patch \
    rpmdevtools \
    desktop-file-utils