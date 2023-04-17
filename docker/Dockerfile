FROM gocd/gocd-agent-ubuntu-22.04:v23.1.0

LABEL maintainer="Andrew Knackstedt <andrewk@vivaldi.net>"
LABEL org.opencontainers.image.source https://github.com/knackstedt/gocd-agents

# Switch to root user to perform installations
USER root

RUN apt update
RUN apt install gnupg curl ca-certificates
RUN apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin

# Back to go user
USER go
