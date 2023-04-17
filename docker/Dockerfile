FROM gocd/gocd-agent-alpine-3.16:v23.1.0

LABEL maintainer="Andrew Knackstedt <andrewk@vivaldi.net>"
LABEL org.opencontainers.image.source https://github.com/knackstedt/gocd-agents

# Switch to root user to perform installations
USER root
RUN apk update
RUN apk add docker openrc --no-cache
RUN rc-update add docker default
RUN rc-update add cgroups
# RUN service docker start

# Back to go user
USER go