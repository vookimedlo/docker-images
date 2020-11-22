#!/bin/sh

# Remove all images
#
docker system prune -af
docker rmi $(docker images -a -q)

start=`date +%s`

set -e

find qt -name "Dockerfile" -print0 | xargs -L 1 -0 sed -i'.orig' 's/FROM vookimedlo/FROM docker.pkg.github.com\/vookimedlo\/docker-images/'

# GCC
#
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-gcc:gcc_stable                       gcc/debian/stable
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-gcc:gcc_buster                       gcc/debian/buster
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_bionic                       gcc/ubuntu/bionic
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_xenial                       gcc/ubuntu/xenial
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_eoan                         gcc/ubuntu/eoan
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_focal                        gcc/ubuntu/focal
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_groovy                        gcc/ubuntu/groovy
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_stable                       gcc/fedora/stable
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_30                           gcc/fedora/30
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_31                           gcc/fedora/31
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_32                           gcc/fedora/32
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_33                           gcc/fedora/33

# Clang
#
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-clang:clang_stable                   clang/debian/stable
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-clang:clang_buster                   clang/debian/buster
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_bionic                   clang/ubuntu/bionic
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_xenial                   clang/ubuntu/xenial
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_eoan                     clang/ubuntu/eoan
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_focal                    clang/ubuntu/focal
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_groovy                   clang/ubuntu/groovy
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_stable                   clang/fedora/stable
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_30                       clang/fedora/30
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_31                       clang/fedora/31
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_32                       clang/fedora/32
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_33                       clang/fedora/33

# Debian - distro Qt
#
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_clang_stable qt/debian/stable/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_gcc_stable   qt/debian/stable/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_clang_buster qt/debian/buster/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_gcc_buster   qt/debian/buster/latestDistroOfficial/gcc

# Fedora - distro Qt
#
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_stable qt/fedora/stable/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_stable   qt/fedora/stable/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_30     qt/fedora/30/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_30       qt/fedora/30/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_31     qt/fedora/31/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_31       qt/fedora/31/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_32     qt/fedora/32/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_32       qt/fedora/32/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_33     qt/fedora/33/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_33       qt/fedora/33/latestDistroOfficial/gcc


# Ubuntu - distro Qt
#
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_bionic qt/ubuntu/bionic/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_bionic   qt/ubuntu/bionic/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_xenial qt/ubuntu/xenial/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_xenial   qt/ubuntu/xenial/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_eoan   qt/ubuntu/eoan/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_eoan     qt/ubuntu/eoan/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_focal   qt/ubuntu/focal/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_focal     qt/ubuntu/focal/latestDistroOfficial/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_groovy   qt/ubuntu/groovy/latestDistroOfficial/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_groovy     qt/ubuntu/groovy/latestDistroOfficial/gcc

docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_clang_focal  qt/ubuntu/focal/5.14/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_gcc_focal    qt/ubuntu/focal/5.14/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_clang_xenial  qt/ubuntu/xenial/5.14/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_gcc_xenial    qt/ubuntu/xenial/5.14/gcc
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_clang_bionic  qt/ubuntu/bionic/5.14/clang
docker build -t docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_gcc_bionic    qt/ubuntu/bionic/5.14/gcc


######################################################3

# GCC - PUSH
#
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-gcc:gcc_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-gcc:gcc_buster
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_bionic
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_xenial
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_eoan
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_focal
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-gcc:gcc_groovy
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_30
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_31
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_32
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-gcc:gcc_33

# Clang - PUSH
#
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-clang:clang_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-clang:clang_buster
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_bionic
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_xenial
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_eoan
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_focal
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-clang:clang_groovy
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_30
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_31
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_32
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-clang:clang_33

# Debian - distro Qt - PUSH
#
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_clang_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_gcc_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_clang_buster
docker push docker.pkg.github.com/vookimedlo/docker-images/debian-qt:latestDistroOfficial_gcc_buster

# Fedora - distro Qt - PUSH
#
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_stable
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_30
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_30
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_31
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_31
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_32
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_32
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_clang_33
docker push docker.pkg.github.com/vookimedlo/docker-images/fedora-qt:latestDistroOfficial_gcc_33

# Ubuntu - distro Qt - PUSH
#
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_bionic
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_bionic
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_xenial
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_xenial
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_eoan
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_eoan
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_focal
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_focal
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_clang_groovy
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:latestDistroOfficial_gcc_groovy

docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_clang_xenial
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_gcc_xenial
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_clang_bionic
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_gcc_bionic
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_clang_focal
docker push docker.pkg.github.com/vookimedlo/docker-images/ubuntu-qt:5.14_gcc_focal

echo "!!! DONE !!!"

end=`date +%s`
echo -n "$end - $start = "
expr $end - $start
