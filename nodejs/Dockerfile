# Base image
FROM gocd/gocd-agent-docker-dind:v23.1.0

LABEL maintainer="Andrew Knackstedt <andrewk@vivaldi.net>"
LABEL org.opencontainers.image.source https://github.com/knackstedt/gocd-agents

# Switch to root user to perform installations
USER root
RUN apk update
RUN apk add nodejs npm make gcc g++ musl-dev binutils autoconf automake libtool pkgconfig check-dev jq

RUN mkdir ~/.npm-global
RUN npm config set prefix ~/.npm-global

RUN export PATH=~/.npm-global
RUN npm i -g artillery@latest

RUN ln -s /root/.npm-global/bin/artillery /usr/local/bin/artillery
# This comment exists solely to trigger automation. (update nodejs)

# Back to go user
USER go
