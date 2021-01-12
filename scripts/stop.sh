#!/bin/ash

source ./scripts/vars.sh

docker stop $CONTAINER_NAME 2>/dev/null || true

