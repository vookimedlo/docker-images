FROM vookimedlo/alpine-gcc:gcc_latest

LABEL maintainer="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.authors="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.url="https://github.com/vookimedlo/docker-images"
LABEL org.opencontainers.image.vendor="Michal Duda"
LABEL org.opencontainers.image.title="Alpine latest GCC based Qt development image"
LABEL org.opencontainers.image.description="Provides compiler, CMake and the distro-Qt development stuff."

ARG GIT_COMMIT
LABEL org.opencontainers.image.revision="${GIT_COMMIT}"

ARG BUILD_DATE
LABEL org.opencontainers.image.created="${BUILD_DATE}"

RUN apk add --no-cache qt6-qtbase  \
		       qt6-qtbase-dev \
	               qt6-qtimageformats \
	               qt6-qtimageformats-dev \
                       qt6-qtsvg \
                       qt6-qtsvg-dev \
                       qt6-qttools \
                       qt6-qttools-dev

