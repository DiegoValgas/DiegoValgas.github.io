#!/bin/bash

# Executa comandos npm dentro do container, na pasta /var/www/project.
# Uso: ./scripts/npm.sh run build

CONTAINER="diego-valgas"
WORKDIR="/var/www"

# Usa TTY apenas quando o terminal for interativo (permite uso em pipes/CI)
if [ -t 0 ] && [ -t 1 ]; then
  TTY_FLAGS="-it"
else
  TTY_FLAGS="-i"
fi

docker exec $TTY_FLAGS -w "$WORKDIR" "$CONTAINER" npm "$@"
