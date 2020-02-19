#!/bin/bash

export TMP_DIR=$(pwd)/tmp
echo running ./_regen_qcow2.sh `docker images | awk '{print $3}' | uniq | sed "1 d" | paste -sd " " -`
./_regen_qcow2.sh `docker images | awk '{print $3}' | uniq | sed "1 d" | paste -sd " " -`