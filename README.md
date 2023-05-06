# docker-images

[![Docker Image CI](https://github.com/vookimedlo/docker-images/actions/workflows/all-buildah.yml/badge.svg)](https://github.com/vookimedlo/docker-images/actions/workflows/docker-image-qt.yml)
[![Alpine](https://img.shields.io/badge/Alpine-blueviolet?&logo=alpine-linux)](/qt/alpine)
[![Debian](https://img.shields.io/badge/Debian-blueviolet?&logo=debian)](/qt/debian)
[![Fedora](https://img.shields.io/badge/Fedora-blueviolet?&logo=fedora)](/qt/fedora)
[![Ubuntu](https://img.shields.io/badge/Ubuntu-blueviolet?&logo=ubuntu)](/qt/ubuntu)

Docker images for a continuous integration. CI services usually support the pre-defined GNU/Linux OS as a target platform. Docker images can bypass such restrictions.

The main purpose of these docker images is to provide the developer-ready platforms with the various [Qt 6.x][4] versions inside.

CI services:
- Github Actions ([see example][3])

Images for multiple architectures are hosted at:
 - [Docker Hub][1]
 - [GitHub Packages][2]
 
 
 [1]: https://hub.docker.com/u/vookimedlo/
 [2]: https://github.com/vookimedlo?tab=packages&repo_name=docker-images
 [3]: https://github.com/vookimedlo/vooki-image-viewer/actions
 [4]: https://www.qt.io/
