#!/bin/ash

source ./scripts/vars.sh

[[ -z "$IMAGE_PREFIX" ]]	&& \
[[ -z "$IMAGE_NAME" ]]		&& \
[[ -z "$IMAGE_VERSION" ]]	&& \
[[ -z "$CONTAINER_NAME" ]]	&& \
[[ -z "$VOLUME_DATA_PATH" ]]

[[ -d "$VOLUME_DATA_PATH" ]]

