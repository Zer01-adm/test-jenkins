#!/bin/bash
set -e

if [ -S /var/run/docker.sock ]; then
  GID=$(stat -c %g /var/run/docker.sock)

  if ! getent group "$GID" >/dev/null 2>&1; then
    addgroup -g "$GID" dockersock
  fi

  GNAME=$(getent group "$GID" | cut -d: -f1)

  if ! id -nG jenkins | grep -qw "$GNAME"; then
    usermod -aG "$GNAME" jenkins
  fi
fi

exec /usr/local/bin/setup-sshd