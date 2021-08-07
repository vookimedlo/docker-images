#!/bin/sh

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

start=`date +%s`

set -e

find qt -name "Dockerfile" -print0 | xargs -L 1 -0 sed -i'.orig' 's/FROM vookimedlo/FROM docker.pkg.github.com\/vookimedlo\/docker-images/'

# GCC
#
docker build -t docker.pkg.github.com/vookimedlo/docker-images/alpine-gcc:gcc_latest                       gcc/alpine/latest
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-gcc:gcc_stable                       gcc/debian/stable
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-gcc:gcc_buster                       gcc/debian/buster
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-gcc:gcc_bullseye                     gcc/debian/bullseye
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_bionic                       gcc/ubuntu/bionic
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_xenial                       gcc/ubuntu/xenial
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_focal                        gcc/ubuntu/focal
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_hirsute                      gcc/ubuntu/hirsute
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_stable                       gcc/fedora/stable
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_32                           gcc/fedora/32
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_33                           gcc/fedora/33
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_34                           gcc/fedora/34


# GCC - PUSH
#
docker push docker.pkg.github.com/vookimedlo/docker-images/alpine-gcc:gcc_latest
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-gcc:gcc_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-gcc:gcc_buster
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-gcc:gcc_bullseye
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_bionic
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_xenial
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_focal
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_hirsute
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_32
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_33
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_34


# Clang
#
docker build -t docker.pkg.github.com/vookimedlo/docker-images/alpine-clang:clang_latest                   clang/alpine/latest
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-clang:clang_stable                   clang/debian/stable
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-clang:clang_buster                   clang/debian/buster
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-clang:clang_bullseye                 clang/debian/bullseye
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_bionic                   clang/ubuntu/bionic
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_xenial                   clang/ubuntu/xenial
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_focal                    clang/ubuntu/focal
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_hirsute                  clang/ubuntu/hirsute
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_stable                   clang/fedora/stable
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_32                       clang/fedora/32
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_33                       clang/fedora/33
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_34                       clang/fedora/34

# Clang - PUSH
#
docker push docker.pkg.github.com/vookimedlo/docker-images/alpine-clang:clang_latest
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-clang:clang_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-clang:clang_buster
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-clang:clang_bullseye
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_bionic
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_xenial
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_focal
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_hirsute
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_32
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_33
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_34

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

# Alpine - distro Qt - just gcc. Clang seems to be broken
#
docker build -t docker.pkg.github.com/vookimedlo/docker-images/alpine-qt:latestDistroOfficial_gcc_latest   qt/alpine/latest/latestDistroOfficial/gcc

# Alpine - distro Qt - PUSH
#
docker push docker.pkg.github.com/vookimedlo/docker-images/alpine-qt:latestDistroOfficial_gcc_latest

# Debian - distro Qt
#
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_clang_stable qt/debian/stable/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_gcc_stable   qt/debian/stable/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_clang_buster qt/debian/buster/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_gcc_buster   qt/debian/buster/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_clang_bullseye qt/debian/bullseye/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_gcc_bullseye   qt/debian/bullseye/latestDistroOfficial/gcc


# Debian - distro Qt - PUSH
#
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_clang_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_gcc_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_clang_buster
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_gcc_buster
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_clang_bullseye
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_gcc_bullseye


# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

# Fedora - distro Qt
#
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_stable qt/fedora/stable/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_stable   qt/fedora/stable/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_32     qt/fedora/32/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_32       qt/fedora/32/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_33     qt/fedora/33/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_33       qt/fedora/33/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_34     qt/fedora/34/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_34       qt/fedora/34/latestDistroOfficial/gcc

# Fedora - distro Qt - PUSH
#
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_32
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_32
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_33
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_33
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_34
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_34

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

# Ubuntu - distro Qt
#
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_bionic qt/ubuntu/bionic/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_bionic   qt/ubuntu/bionic/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_xenial qt/ubuntu/xenial/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_xenial   qt/ubuntu/xenial/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_focal   qt/ubuntu/focal/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_focal     qt/ubuntu/focal/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_hirsute   qt/ubuntu/hirsute/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_hirsute     qt/ubuntu/hirsute/latestDistroOfficial/gcc

# Ubuntu - distro Qt - PUSH
#
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_bionic
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_bionic
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_xenial
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_xenial
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_focal
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_focal
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_hirsute
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_hirsute

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

# Ubuntu - custom Qt
#
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.15_clang_focal  qt/ubuntu/focal/5.15/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.15_gcc_focal    qt/ubuntu/focal/5.15/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_clang_focal  qt/ubuntu/focal/5.14/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_gcc_focal    qt/ubuntu/focal/5.14/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_clang_xenial  qt/ubuntu/xenial/5.14/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_gcc_xenial    qt/ubuntu/xenial/5.14/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_clang_bionic  qt/ubuntu/bionic/5.14/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_gcc_bionic    qt/ubuntu/bionic/5.14/gcc

# Ubuntu - custom Qt - PUSH
#
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_clang_xenial
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_gcc_xenial
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_clang_bionic
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_gcc_bionic
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_clang_focal
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_gcc_focal
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.15_clang_focal
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.15_gcc_focal

# Remove all images
#
docker system prune -af || true
docker rmi $(docker images -a -q) || true

echo "!!! DONE !!!"

end=`date +%s`
echo -n "$end - $start = "
expr $end - $start
