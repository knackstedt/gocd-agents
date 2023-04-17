FROM gocd/gocd-agent-docker-dind:v23.1.0

LABEL maintainer="Andrew Knackstedt <andrewk@vivaldi.net>"
LABEL org.opencontainers.image.source https://github.com/knackstedt/gocd-agents

# Switch to root user to perform installations
USER root

# Insert tools into system
COPY kubeconnect.sh /usr/local/bin/kubeconnect

RUN apk update
RUN apk add curl gettext

# Download Kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# Install a reference into the system
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Testing automation.

# Back to go user
USER go