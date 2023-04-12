FROM gocd/gocd-agent-alpine-3.17:v23.1.0

LABEL maintainer="Andrew Knackstedt <andrewk@vivaldi.net>"
LABEL org.opencontainers.image.source https://github.com/OWNER/REPO

# Switch to root user to perform installations
USER root
RUN apk update
RUN apk add nodejs npm make gcc g++ musl-dev binutils autoconf automake libtool pkgconfig check-dev

# Back to go user
USER go