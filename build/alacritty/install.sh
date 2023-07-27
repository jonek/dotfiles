#!/bin/bash

INSTALL_TARGET_DIR=~/local/bin

docker build --progress plain -t alacritty .
docker run -v ${INSTALL_TARGET_DIR}:/mnt alacritty cp target/release/alacritty /mnt
