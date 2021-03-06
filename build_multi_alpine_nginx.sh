#!/bin/bash
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
docker buildx create --use --name mybuilder3
docker buildx build --tag scjtqs/nextcloud:alpine-nginx --platform linux/amd64,linux/arm64,linux/arm/v6,linux/386,linux/ppc64le --push -f Dockerfile.fpm.alpine.nginx .
docker buildx build --tag registry.cn-hangzhou.aliyuncs.com/scjtqs/nextcloud:alpine-nginx --platform linux/amd64,linux/arm64,linux/arm/v6,linux/386,linux/ppc64le --push -f Dockerfile.fpm.alpine.nginx .
docker buildx rm mybuilder3
