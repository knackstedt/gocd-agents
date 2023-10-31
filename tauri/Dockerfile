FROM gocd/gocd-agent-ubuntu-22.04:v23.3.0

LABEL maintainer="Andrew Knackstedt <andrewk@vivaldi.net>"
LABEL org.opencontainers.image.source https://github.com/knackstedt/gocd-agents

# Switch to root user to perform installations
USER root
RUN apt update
RUN apt install \
    nodejs \
    npm \
    curl \
    wget \
    make \
    gcc \
    g++ \
    binutils \
    autoconf \
    automake \
    libtool \
    jq \
    libwebkit2gtk-4.0-dev \
    build-essential \
    file \
    libssl-dev \
    libgtk-3-dev \
    libayatana-appindicator3-dev \
    librsvg2-dev -y

# Back to go user
USER go

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y
RUN echo 'source $HOME/.cargo/env' >> $HOME/.bashrc

