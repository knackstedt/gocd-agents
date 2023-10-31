FROM gocd/gocd-agent-docker-dind:v23.1.0

LABEL maintainer="Andrew Knackstedt <andrewk@vivaldi.net>"
LABEL org.opencontainers.image.source https://github.com/knackstedt/gocd-agents

# Switch to root user to perform installations
USER root
RUN apk update
RUN apk add \
    nodejs \
    npm \
    curl \
    wget \
    make \
    gcc \
    g++ \
    musl-dev \
    binutils \
    autoconf \
    automake \
    libtool \
    pkgconfig \
    check-dev \
    jq \
    libwebkit2gtk-4.0-dev \
    build-essential \
    file \
    libssl-dev \
    libgtk-3-dev \
    libayatana-appindicator3-dev \
    librsvg2-dev

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# This comment exists solely to trigger automation. Remove.

# Back to go user
USER go