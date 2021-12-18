#!/bin/sh

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

start=`date +%s`

set -e

find qt -name "Dockerfile" -print0 | xargs -L 1 -0 sed -i'.orig' 's/FROM vookimedlo/FROM ghcr.io\/vookimedlo\/docker-images/'

docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
docker buildx create --driver docker-container --driver-opt image=moby/buildkit:master,network=host --name super_truper
docker buildx use super_truper


# GCC
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-gcc:gcc_stable                       gcc/debian/stable
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-gcc:gcc_buster                       gcc/debian/buster
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-gcc:gcc_bullseye                     gcc/debian/bullseye
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-gcc:gcc_bionic                       gcc/ubuntu/bionic
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-gcc:gcc_xenial                       gcc/ubuntu/xenial
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-gcc:gcc_focal                        gcc/ubuntu/focal
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-gcc:gcc_hirsute                      gcc/ubuntu/hirsute
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-gcc:gcc_impish                       gcc/ubuntu/impish
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-gcc:gcc_stable                       gcc/fedora/stable
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-gcc:gcc_33                           gcc/fedora/33
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-gcc:gcc_34                           gcc/fedora/34
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-gcc:gcc_35                           gcc/fedora/35
docker buildx build --progress plain --push --platform linux/amd64                           -t ghcr.io/vookimedlo/alpine-gcc:gcc_latest                       gcc/alpine/latest

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true


# Clang
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-clang:clang_stable                   clang/debian/stable
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-clang:clang_buster                   clang/debian/buster
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-clang:clang_bullseye                 clang/debian/bullseye
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-clang:clang_bionic                   clang/ubuntu/bionic
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-clang:clang_xenial                   clang/ubuntu/xenial
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-clang:clang_focal                    clang/ubuntu/focal
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-clang:clang_hirsute                  clang/ubuntu/hirsute
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-clang:clang_impish                   clang/ubuntu/impish
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-clang:clang_stable                   clang/fedora/stable
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-clang:clang_33                       clang/fedora/33
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-clang:clang_34                       clang/fedora/34
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-clang:clang_35                       clang/fedora/35
docker buildx build --progress plain --push --platform linux/amd64                           -t ghcr.io/vookimedlo/alpine-clang:clang_latest                   clang/alpine/latest

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true


# Alpine - distro Qt - just gcc. Clang seems to be broken
#
docker buildx build --progress plain --push --platform linux/amd64                           -t ghcr.io/vookimedlo/alpine-qt:latestDistroOfficial_gcc_stable   qt/alpine/latest/latestDistroOfficial/gcc


# Debian - distro Qt
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-qt:latestDistroOfficial_clang_stable   qt/debian/stable/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-qt:latestDistroOfficial_gcc_stable     qt/debian/stable/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-qt:latestDistroOfficial_clang_buster   qt/debian/buster/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-qt:latestDistroOfficial_gcc_buster     qt/debian/buster/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-qt:latestDistroOfficial_clang_bullseye qt/debian/bullseye/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-qt:latestDistroOfficial_gcc_bullseye   qt/debian/bullseye/latestDistroOfficial/gcc

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true


# Fedora - distro Qt
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-qt:latestDistroOfficial_clang_stable qt/fedora/stable/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-qt:latestDistroOfficial_gcc_stable   qt/fedora/stable/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-qt:latestDistroOfficial_clang_33     qt/fedora/33/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-qt:latestDistroOfficial_gcc_33       qt/fedora/33/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-qt:latestDistroOfficial_clang_34     qt/fedora/34/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-qt:latestDistroOfficial_gcc_34       qt/fedora/34/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-qt:latestDistroOfficial_clang_35     qt/fedora/35/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-qt:latestDistroOfficial_gcc_35       qt/fedora/35/latestDistroOfficial/gcc

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true


# Ubuntu - distro Qt
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:latestDistroOfficial_clang_bionic   qt/ubuntu/bionic/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:latestDistroOfficial_gcc_bionic     qt/ubuntu/bionic/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:latestDistroOfficial_clang_xenial   qt/ubuntu/xenial/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:latestDistroOfficial_gcc_xenial     qt/ubuntu/xenial/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:latestDistroOfficial_clang_focal    qt/ubuntu/focal/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:latestDistroOfficial_gcc_focal      qt/ubuntu/focal/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:latestDistroOfficial_clang_hirsute  qt/ubuntu/hirsute/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:latestDistroOfficial_gcc_hirsute    qt/ubuntu/hirsute/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:latestDistroOfficial_clang_impish   qt/ubuntu/impish/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:latestDistroOfficial_gcc_impish     qt/ubuntu/impish/latestDistroOfficial/gcc

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

# There are no ARM Qt binaries available for given version of Qt
#
docker buildx build --progress plain --push --platform linux/amd64  -t ghcr.io/vookimedlo/ubuntu-qt:5.14_clang_xenial  qt/ubuntu/xenial/5.14/clang
docker buildx build --progress plain --push --platform linux/amd64  -t ghcr.io/vookimedlo/ubuntu-qt:5.14_gcc_xenial    qt/ubuntu/xenial/5.14/gcc
docker buildx build --progress plain --push --platform linux/amd64  -t ghcr.io/vookimedlo/ubuntu-qt:5.14_clang_bionic  qt/ubuntu/bionic/5.14/clang
docker buildx build --progress plain --push --platform linux/amd64  -t ghcr.io/vookimedlo/ubuntu-qt:5.14_gcc_bionic    qt/ubuntu/bionic/5.14/gcc
docker buildx build --progress plain --push --platform linux/amd64  -t ghcr.io/vookimedlo/ubuntu-qt:5.14_clang_focal   qt/ubuntu/focal/5.14/clang
docker buildx build --progress plain --push --platform linux/amd64  -t ghcr.io/vookimedlo/ubuntu-qt:5.14_gcc_focal     qt/ubuntu/focal/5.14/gcc
docker buildx build --progress plain --push --platform linux/amd64  -t ghcr.io/vookimedlo/ubuntu-qt:5.15_clang_focal   qt/ubuntu/focal/5.15/clang
docker buildx build --progress plain --push --platform linux/amd64  -t ghcr.io/vookimedlo/ubuntu-qt:5.15_gcc_focal     qt/ubuntu/focal/5.15/gcc

echo "!!! DONE !!!"

end=`date +%s`
echo -n "$end - $start = "
expr $end - $start
