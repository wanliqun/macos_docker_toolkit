# macos_docker_toolkit
mac os toolkit

As a developer, I use docker to do my development work a lot on my Mac Air laptop. It's quite annoying that once I pulled some docker images and kicked  off some docker containers, the consuming  disk space keeps growing even after I try to  delete some files to free some space.

So I googled around, then based on the following references, I write some shell scripts to work it out. It did work for me,  and I hope it work for you too.
- [(David Scott's Blog)  Docker for Mac: reducing disk space](https://djs55.github.io/jekyll/update/2017/11/27/docker-for-mac-disk-space.html))
- [(StackOverflow)  Docker is filling up my disk space](https://stackoverflow.com/questions/39878939/docker-is-filling-up-my-disk-space)

## **docker_regen.sh**
This script will backup your docker images to tar archive files, then delete docker's single writable disk image`Docker.raw` (or `Docker.qcow2`), and finally restore the docker images from the previous backup files (and optionally remove the backup files). 
You can change the docker settings preference to adjust the maximum docker image size during the process.

## **docker_reclaim.sh**
This script will do a docker system prune,  then trim & reclaim the docker disk image size,  and output the pre-reclaim & post -reclaim disk space usage.

## **docker_retag.sh**
This script will re-tag the docker image from image id after restoring the docker images from backup file.
