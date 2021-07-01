#!/bin/bash

set -x

docker system df -v

docker system prune 

docker run --rm --privileged --pid=host docker/desktop-reclaim-space

docker run --rm -it --privileged --pid=host walkerlee/nsenter -t 1 -m -u -i -n fstrim /var/lib/docker

ls -klsh ~/Library/Containers/com.docker.docker/Data/vms/0/Docker.qcow2
