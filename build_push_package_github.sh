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

if [[ -z "$1" ]] || [[ "$1" -eq "compilers" ]]
then

# GCC
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-gcc:gcc_stable                       gcc/debian/stable
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-gcc:gcc_bullseye                     gcc/debian/bullseye
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-gcc:gcc_bookworm                     gcc/debian/bookworm
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-gcc:gcc_jammy                        gcc/ubuntu/jammy
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-gcc:gcc_kinetic                      gcc/ubuntu/kinetic
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-gcc:gcc_stable                       gcc/fedora/stable
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-gcc:gcc_36                           gcc/fedora/36
docker buildx build --progress plain --push --platform linux/amd64                           -t ghcr.io/vookimedlo/alpine-gcc:gcc_latest                       gcc/alpine/latest

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

fi

if [[ -z "$1" ]] || [[ "$1" -eq "qt" ]]
then


# Clang
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-clang:clang_stable                   clang/debian/stable
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-clang:clang_bullseye                 clang/debian/bullseye
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-clang:clang_bookworm                 clang/debian/bookworm
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-clang:clang_jammy                    clang/ubuntu/jammy
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-clang:clang_kinetic                  clang/ubuntu/kinetic
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-clang:clang_stable                   clang/fedora/stable
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-clang:clang_36                       clang/fedora/36
docker buildx build --progress plain --push --platform linux/amd64                           -t ghcr.io/vookimedlo/alpine-clang:clang_latest                   clang/alpine/latest

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true


# Alpine - distro Qt - just gcc. Clang seems to be broken
#
docker buildx build --progress plain --push --platform linux/amd64                           -t ghcr.io/vookimedlo/alpine-qt:qt6_latestDistroOfficial_gcc_stable     qt/alpine/latest/latestDistroOfficial/gcc


# Debian - distro Qt
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-qt:qt6_latestDistroOfficial_clang_stable   qt/debian/stable/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-qt:qt6_latestDistroOfficial_gcc_stable     qt/debian/stable/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-qt:qt6_latestDistroOfficial_clang_bullseye qt/debian/bullseye/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-qt:qt6_latestDistroOfficial_gcc_bullseye   qt/debian/bullseye/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-qt:qt6_latestDistroOfficial_clang_bookworm qt/debian/bookworm/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/debian-qt:qt6_latestDistroOfficial_gcc_bookworm   qt/debian/bookworm/latestDistroOfficial/gcc

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true


# Fedora - distro Qt
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-qt:qt6_latestDistroOfficial_clang_stable   qt/fedora/stable/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-qt:qt6_latestDistroOfficial_gcc_stable     qt/fedora/stable/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-qt:qt6_latestDistroOfficial_clang_36       qt/fedora/36/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t ghcr.io/vookimedlo/fedora-qt:qt6_latestDistroOfficial_gcc_36         qt/fedora/36/latestDistroOfficial/gcc

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true


# Ubuntu - distro Qt
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:qt6_latestDistroOfficial_clang_jammy    qt/ubuntu/jammy/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:qt6_latestDistroOfficial_gcc_jammy      qt/ubuntu/jammy/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:qt6_latestDistroOfficial_clang_bookworm qt/ubuntu/bookworm/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm/v7,linux/arm64  -t ghcr.io/vookimedlo/ubuntu-qt:qt6_latestDistroOfficial_gcc_bookworm   qt/ubuntu/bookworm/latestDistroOfficial/gcc

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

fi

echo "!!! DONE !!!"

end=`date +%s`
echo -n "$end - $start = "
expr $end - $start
