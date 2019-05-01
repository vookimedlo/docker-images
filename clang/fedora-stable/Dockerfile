FROM fedora:latest

RUN yum -y update

RUN yum -y install \
    clang          \
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
    bash \
    coreutils \
    diffutils \
    patch \
    rpmdevtools \
    desktop-file-utils
    

RUN echo "export CXX=clang++" >> /etc/profile
RUN echo "export CC=clang" >> /etc/profile
