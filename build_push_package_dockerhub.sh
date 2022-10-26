#!/bin/sh

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

start=`date +%s`

set -e

#docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
#docker buildx create --driver docker-container --driver-opt image=moby/buildkit:master,network=host --name super_truper
#docker buildx use super_truper

if [ -z "$1" ] || [ "$1" = "compilers" ]
then

# GCC
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-gcc:gcc_stable                       gcc/fedora/stable
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-gcc:gcc_36                           gcc/fedora/36
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-gcc:gcc_37                           gcc/fedora/37
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/debian-gcc:gcc_stable                       gcc/debian/stable
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/debian-gcc:gcc_bullseye                     gcc/debian/bullseye
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/debian-gcc:gcc_bookworm                     gcc/debian/bookworm
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/ubuntu-gcc:gcc_jammy                        gcc/ubuntu/jammy
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/ubuntu-gcc:gcc_kinetic                      gcc/ubuntu/kinetic
docker buildx build --progress plain --push --platform linux/amd64                           -t vookimedlo/alpine-gcc:gcc_latest                       gcc/alpine/latest

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

# Clang
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-clang:clang_stable                   clang/fedora/stable
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-clang:clang_36                       clang/fedora/36
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-clang:clang_37                       clang/fedora/37
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/debian-clang:clang_stable                   clang/debian/stable
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/debian-clang:clang_bullseye                 clang/debian/bullseye
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/debian-clang:clang_bookworm                 clang/debian/bookworm
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/ubuntu-clang:clang_jammy                    clang/ubuntu/jammy
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/ubuntu-clang:clang_kinetic                  clang/ubuntu/kinetic
docker buildx build --progress plain --push --platform linux/amd64                           -t vookimedlo/alpine-clang:clang_latest                   clang/alpine/latest

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

fi

if [ -z "$1" ] || [ "$1" = "qt" ]
then

# Alpine - distro Qt - just gcc. Clang seems to be broken
#
docker buildx build --progress plain --push --platform linux/amd64                           -t vookimedlo/alpine-qt:qt6_latestDistroOfficial_gcc_stable     qt/alpine/latest/latestDistroOfficial/gcc


# Debian - distro Qt
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/debian-qt:qt6_latestDistroOfficial_clang_stable   qt/debian/stable/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/debian-qt:qt6_latestDistroOfficial_gcc_stable     qt/debian/stable/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/debian-qt:qt6_latestDistroOfficial_clang_bullseye qt/debian/bullseye/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/debian-qt:qt6_latestDistroOfficial_gcc_bullseye   qt/debian/bullseye/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/debian-qt:qt6_latestDistroOfficial_clang_bookworm qt/debian/bookworm/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/debian-qt:qt6_latestDistroOfficial_gcc_bookworm   qt/debian/bookworm/latestDistroOfficial/gcc

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true


# Fedora - distro Qt
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:qt6_latestDistroOfficial_clang_stable   qt/fedora/stable/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:qt6_latestDistroOfficial_gcc_stable     qt/fedora/stable/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:qt6_latestDistroOfficial_clang_36       qt/fedora/36/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:qt6_latestDistroOfficial_gcc_36         qt/fedora/36/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:qt6_latestDistroOfficial_clang_37       qt/fedora/37/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64               -t vookimedlo/fedora-qt:qt6_latestDistroOfficial_gcc_37         qt/fedora/37/latestDistroOfficial/gcc

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true


# Ubuntu - distro Qt
#
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/ubuntu-qt:qt6_latestDistroOfficial_clang_jammy    qt/ubuntu/jammy/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/ubuntu-qt:qt6_latestDistroOfficial_gcc_jammy      qt/ubuntu/jammy/latestDistroOfficial/gcc
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/ubuntu-qt:qt6_latestDistroOfficial_clang_kinetic  qt/ubuntu/kinetic/latestDistroOfficial/clang
docker buildx build --progress plain --push --platform linux/amd64,linux/arm64  -t vookimedlo/ubuntu-qt:qt6_latestDistroOfficial_gcc_kinetic    qt/ubuntu/kinetic/latestDistroOfficial/gcc

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

fi

echo "!!! DONE !!!"

end=`date +%s`
echo -n "$end - $start = "
expr $end - $start
