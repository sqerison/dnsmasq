Dnsmasq Docker Image based on Alpine OS (5.883MB)
---------------------------------------------------------
[![CircleCI](https://img.shields.io/circleci/project/sqerison/dnsmasq.svg)](https://circleci.com/gh/sqerison/dnsmasq)
[![ImageLayers Size](https://img.shields.io/imagelayers/image-size/sqerison/dnsmasq/1.svg)](https://circleci.com/gh/sqerison/dnsmasq/1)
[![Docker Pulls](https://img.shields.io/docker/pulls/sqerison/dnsmasq.svg)](https://hub.docker.com/r/sqerison/dnsmasq/)

Versions latest – built on [Alpine Linux](https://alpinelinux.org/).

All versions use the one [sqerison/dnsmasq](https://hub.docker.com/r/sqerison/dnsmasq/) repository,
but each version aligns with the following tags (ie, `sqerison/dnsmasq:<tag>`):

Example
-------
```
    docker run -d \
    -v $(pwd)/dnsmasq.conf:/etc/dnsmasq.conf \
    -p 127.0.0.10:53:5353/udp \
    --name dnsmasq \
    sqerison/dnsmasq
```
  Overwrite the internal configuration
```
    docker run -d \
    -v $(pwd)/dnsmasq.conf:/etc/dnsmasq.conf \
    -v $(pwd)/dnsmasq.hosts:/dnsmasq.hosts \
    -p 127.0.0.10:53:5353/udp \
    --name dnsmasq \
    sqerison/dnsmasq
```
