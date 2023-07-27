#!/bin/bash

INSTALL_TARGET_DIR=~/local/bin

#docker build --progress plain -t starship .
docker run -v ${INSTALL_TARGET_DIR}:/mnt starship cp target/release/starship /mnt
