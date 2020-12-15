#!/bin/ash

docker run \
  --privileged \
  --detach \
  --restart=unless-stopped \
  --publish "2049:2049" \
  --publish "20048:20048" \
  -v "/nas:/exports" \
  --name nfs-server \
  igorlg/nfs-server

