FROM jenkins/ssh-agent:alpine-jdk21

USER root

RUN apk add --no-cache docker-cli shadow

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]