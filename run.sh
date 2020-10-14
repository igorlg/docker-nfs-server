#!/bin/bash


docker run \
  --rm \
  -d \
  -v /nas:/exports \
  -p "2049:2049" \
  -p "20048:20048" \
  --name nfs-server \
  --privileged \
  igorlg/nfs-server

