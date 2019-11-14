FROM fedora:30

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


RUN echo "export CXX=clang++\nexport CC=clang" >> /etc/profile
