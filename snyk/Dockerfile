FROM gocd/gocd-agent-docker-dind:v23.1.0

LABEL maintainer="Andrew Knackstedt <andrewk@vivaldi.net>"
LABEL org.opencontainers.image.source https://github.com/knackstedt/gocd-agents

# Switch to root user to perform installations
USER root
RUN apk update
RUN apk add nodejs npm

# Install SNYK
RUN npm i -g snyk

# Authenticate to SNYK
# SNYK_REGISTRY_USERNAME
# SNYK_REGISTRY_PASSWORD
# snyk auth

# Back to go user
USER go