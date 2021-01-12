#!/bin/ash

set -xe

source ./scripts/vars.sh

[[ -z "$IMAGE_PREFIX" ]]	&& \
[[ -z "$IMAGE_NAME" ]]		&& \
[[ -z "$IMAGE_VERSION" ]]	&& \
[[ -z "$CONTAINER_NAME" ]]	&& \
[[ -z "$VOLUME_DATA_PATHS" ]]

for i in $VOLUME_DATA_PATHS; do
	locdir="$(echo $i | cut -d ':' -f 1)"
	[[ -d "$locdir" ]] || exit 1
done

