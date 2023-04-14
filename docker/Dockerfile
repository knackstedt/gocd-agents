FROM gocd/gocd-agent-alpine:v23.1.0

LABEL maintainer="Andrew Knackstedt <andrewk@vivaldi.net>"
LABEL org.opencontainers.image.source https://github.com/knackstedt/gocd-agents

# Switch to root user to perform installations
USER root
RUN apk update
RUN apk add docker
RUN rc-update add docker default
RUN service docker start
RUN rc-update add cgroups

# This comment exists solely to trigger automation. Remove.

# Back to go user
USER go