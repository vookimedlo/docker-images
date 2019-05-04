FROM fedora:latest

RUN yum -y update

RUN yum -y install \
    gcc            \
    gcc-c++        \
    make           \
    cmake          \
    git

# RPM related
#
RUN yum -y install \
    rpm-build \
    rpm-devel \
    rpmlint \
    python \
    python-dateutil \
    bash \
    coreutils \
    diffutils \
    patch \
    rpmdevtools \
    desktop-file-utils