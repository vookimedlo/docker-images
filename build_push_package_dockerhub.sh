#!/bin/sh

# Remove all images
#
docker system prune -af
docker rmi $(docker images -a -q)

start=`date +%s`

set -e

# GCC
#
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/debian-gcc:gcc_stable                       gcc/debian/stable
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/debian-gcc:gcc_buster                       gcc/debian/buster
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-gcc:gcc_bionic                       gcc/ubuntu/bionic
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-gcc:gcc_xenial                       gcc/ubuntu/xenial
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-gcc:gcc_focal                        gcc/ubuntu/focal
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-gcc:gcc_groovy                       gcc/ubuntu/groovy
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-gcc:gcc_stable                       gcc/fedora/stable
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-gcc:gcc_30                           gcc/fedora/30
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-gcc:gcc_31                           gcc/fedora/31
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-gcc:gcc_32                           gcc/fedora/32
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-gcc:gcc_33                           gcc/fedora/33

# Clang
#
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/debian-clang:clang_stable                   clang/debian/stable
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/debian-clang:clang_buster                   clang/debian/buster
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-clang:clang_bionic                   clang/ubuntu/bionic
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-clang:clang_xenial                   clang/ubuntu/xenial
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-clang:clang_focal                    clang/ubuntu/focal
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-clang:clang_groovy                   clang/ubuntu/groovy
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-clang:clang_stable                   clang/fedora/stable
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-clang:clang_30                       clang/fedora/30
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-clang:clang_31                       clang/fedora/31
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-clang:clang_32                       clang/fedora/32
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-clang:clang_33                       clang/fedora/33

# Debian - distro Qt
#
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/debian-qt:latestDistroOfficial_clang_stable qt/debian/stable/latestDistroOfficial/clang
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/debian-qt:latestDistroOfficial_gcc_stable   qt/debian/stable/latestDistroOfficial/gcc
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/debian-qt:latestDistroOfficial_clang_buster qt/debian/buster/latestDistroOfficial/clang
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/debian-qt:latestDistroOfficial_gcc_buster   qt/debian/buster/latestDistroOfficial/gcc

# Fedora - distro Qt
#
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:latestDistroOfficial_clang_stable qt/fedora/stable/latestDistroOfficial/clang
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:latestDistroOfficial_gcc_stable   qt/fedora/stable/latestDistroOfficial/gcc
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:latestDistroOfficial_clang_30     qt/fedora/30/latestDistroOfficial/clang
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:latestDistroOfficial_gcc_30       qt/fedora/30/latestDistroOfficial/gcc
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:latestDistroOfficial_clang_31     qt/fedora/31/latestDistroOfficial/clang
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:latestDistroOfficial_gcc_31       qt/fedora/31/latestDistroOfficial/gcc
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:latestDistroOfficial_clang_32     qt/fedora/32/latestDistroOfficial/clang
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:latestDistroOfficial_gcc_32       qt/fedora/32/latestDistroOfficial/gcc
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:latestDistroOfficial_clang_33     qt/fedora/33/latestDistroOfficial/clang
docker buildx build --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:latestDistroOfficial_gcc_33       qt/fedora/33/latestDistroOfficial/gcc

# Ubuntu - distro Qt
#
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-qt:latestDistroOfficial_clang_bionic qt/ubuntu/bionic/latestDistroOfficial/clang
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-qt:latestDistroOfficial_gcc_bionic   qt/ubuntu/bionic/latestDistroOfficial/gcc
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-qt:latestDistroOfficial_clang_xenial qt/ubuntu/xenial/latestDistroOfficial/clang
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-qt:latestDistroOfficial_gcc_xenial   qt/ubuntu/xenial/latestDistroOfficial/gcc
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-qt:latestDistroOfficial_clang_focal  qt/ubuntu/focal/latestDistroOfficial/clang
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-qt:latestDistroOfficial_gcc_focal    qt/ubuntu/focal/latestDistroOfficial/gcc
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-qt:latestDistroOfficial_clang_groovy  qt/ubuntu/groovy/latestDistroOfficial/clang
docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t vookimedlo/ubuntu-qt:latestDistroOfficial_gcc_groovy    qt/ubuntu/groovy/latestDistroOfficial/gcc

# There are no ARM Qt binaries available for given version of Qt
#
docker buildx build --push --platform linux/amd64  -t vookimedlo/ubuntu-qt:5.14_clang_xenial  qt/ubuntu/xenial/5.14/clang
docker buildx build --push --platform linux/amd64  -t vookimedlo/ubuntu-qt:5.14_gcc_xenial    qt/ubuntu/xenial/5.14/gcc
docker buildx build --push --platform linux/amd64  -t vookimedlo/ubuntu-qt:5.14_clang_bionic  qt/ubuntu/bionic/5.14/clang
docker buildx build --push --platform linux/amd64  -t vookimedlo/ubuntu-qt:5.14_gcc_bionic    qt/ubuntu/bionic/5.14/gcc
docker buildx build --push --platform linux/amd64  -t vookimedlo/ubuntu-qt:5.14_clang_focal   qt/ubuntu/focal/5.14/clang
docker buildx build --push --platform linux/amd64  -t vookimedlo/ubuntu-qt:5.14_gcc_focal     qt/ubuntu/focal/5.14/gcc
docker buildx build --push --platform linux/amd64  -t vookimedlo/ubuntu-qt:5.15_clang_focal   qt/ubuntu/focal/5.15/clang
docker buildx build --push --platform linux/amd64  -t vookimedlo/ubuntu-qt:5.15_gcc_focal     qt/ubuntu/focal/5.15/gcc

echo "!!! DONE !!!"

end=`date +%s`
echo -n "$end - $start = "
expr $end - $start
