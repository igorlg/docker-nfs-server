#!/bin/ash

source ./scripts/vars.sh

# if [[ `docker ps -aq -f name=$CONTAINER_NAME | wc -l` == "1" ]]; then
# 	docker kill $CONTAINER_NAME
# 	docker rm $CONTAINER_NAME
# fi

docker run \
	--privileged \
	--detach \
	--restart=unless-stopped \
	--name $IMAGE_NAME \
	--publish "2049:2049" \
	--publish "20048:20048" \
	-v "${VOLUME_DATA_PATH}:/exports" \
	"$IMAGE_PREFIX/$IMAGE_NAME:$IMAGE_VERSION"

docker ps -a

