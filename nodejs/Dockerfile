FROM gocd/gocd-agent-alpine-3.17:v23.1.0

LABEL maintainer="Andrew Knackstedt <andrewk@vivaldi.net>"

# Switch to root user to perform installations
USER root
RUN apk add nodejs make gcc g++ musl-dev binutils autoconf automake libtool pkgconfig check-dev

# Back to go user
USER go