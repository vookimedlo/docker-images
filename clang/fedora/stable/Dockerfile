FROM fedora:latest

# Starting from the Fedora 31 - python is python3!!!
#
RUN yum -y update && yum -y install \
    clang              \
    make               \
    cmake              \
    git                \
    rpm-build          \
    rpm-devel          \
    rpmlint            \
    python             \
    python3-dateutil   \
    bash               \
    coreutils          \
    diffutils          \
    patch              \
    rpmdevtools        \
    desktop-file-utils


RUN echo "export CXX=clang++" >> /etc/profile
RUN echo "export CC=clang" >> /etc/profile
