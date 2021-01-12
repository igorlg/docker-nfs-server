#!/bin/ash

source ./scripts/vars.sh

for i in $VOLUME_MOUNT_PATHS; do
	mounts="$mounts -v $i"
	targets="$targets $(echo $i | cut -d ':' -f 2)"
done

docker run \
	--privileged \
	--detach \
	--restart=unless-stopped \
	--name $IMAGE_NAME \
	--publish "$CONTAINER_PORT_NFS:2049" \
	--publish "$CONTAINER_PORT_MOUNTD:20048" \
	$mounts \
	"$IMAGE_PREFIX/$IMAGE_NAME:$IMAGE_VERSION" \
	$targets

docker ps -a

docker exec nfs-server exportfs -v

