#!/bin/bash

echo docker system df -v
docker system df -v

echo docker system prune 
docker system prune 

echo docker run --rm --privileged --pid=host docker/desktop-reclaim-space
docker run --rm --privileged --pid=host docker/desktop-reclaim-space

echo docker run --rm -it --privileged --pid=host walkerlee/nsenter -t 1 -m -u -i -n fstrim /var/lib/docker
docker run --rm -it --privileged --pid=host walkerlee/nsenter -t 1 -m -u -i -n fstrim /var/lib/docker

echo ls -klsh ~/Library/Containers/com.docker.docker/Data/vms/0/Docker.qcow2
ls -klsh ~/Library/Containers/com.docker.docker/Data/vms/0/Docker.qcow2