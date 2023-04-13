FROM gocd/gocd-agent-docker-dind:v23.1.0

LABEL maintainer="Andrew Knackstedt <andrewk@vivaldi.net>"
LABEL org.opencontainers.image.source https://github.com/knackstedt/gocd-agents

# Switch to root user to perform installations
USER root
RUN apk update
RUN apk add nodejs npm make gcc g++ musl-dev binutils autoconf automake libtool pkgconfig check-dev

# This comment exists solely to trigger automation. Remove.

# Back to go user
USER go