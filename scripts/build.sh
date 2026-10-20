#!/bin/bash

docker exec $TTY_FLAGS -w /var/www diego-valgas npm run build
