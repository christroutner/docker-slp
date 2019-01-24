# Electron Cash SLP
This is a Dockerized version of the
[Electron Cash SLP](https://github.com/simpleledger/Electron-Cash-SLP) wallet.
It builds on top of the [python base](../python-base) image, so that image
should be built first.

## Installation and Usage
- Build the Docker image by running the [build-image](build-image.sh) shell
script.

- Run the image with your edited `example-run-image.sh` shell script and allow
the blockchain to sync. This will take 1-2 days and approximately 25GB of disk
space.
