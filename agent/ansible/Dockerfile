FROM jenkins/ssh-agent:alpine-jdk21

USER root

RUN apk add --no-cache \
    ansible \
    ansible-lint \
    openssh-client \
    bash \
    curl \
    git \
    py3-pip

USER jenkins