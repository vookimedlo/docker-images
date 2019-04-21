FROM fedora:latest

RUN yum -y update

RUN yum -y install \
    clang          \
    make           \
    cmake          \
    git

RUN echo "export CXX=clang++" >> /etc/profile
RUN echo "export CC=clang" >> /etc/profile
