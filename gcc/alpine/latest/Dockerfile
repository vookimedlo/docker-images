FROM alpine:latest

LABEL maintainer="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.authors="Michal Duda <github@vookimedlo.cz>"
LABEL org.opencontainers.image.url="https://github.com/vookimedlo/docker-images"
LABEL org.opencontainers.image.vendor="Michal Duda"
LABEL org.opencontainers.image.title="Alpine latest GCC image"
LABEL org.opencontainers.image.description="Provides compiler & CMake."

ARG GIT_COMMIT
LABEL org.opencontainers.image.revision="${GIT_COMMIT}"

ARG BUILD_DATE
LABEL org.opencontainers.image.created="${BUILD_DATE}"

RUN apk add --no-cache \
    g++                        \
    gcc                        \
    make                       \
    cmake                      \
    git

