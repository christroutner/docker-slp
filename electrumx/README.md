# ElectrumX
The files in this directory creates an
[ElectrumX server](https://electrumx.readthedocs.io/en/latest/) used to validate
Bitcoin Cash transactions. These servers are used by the Electron Cash wallet.

# Installation and Usage
1. Edit the [example-run-image](example-run-image.sh) shell script to point the
volume to a location you want the blockchain data to be downloaded to. Also
add any *DAEMON_URL* settings needed. If this file is renamed to `run-image.sh`
it will not be included in the github repo due to the .gitignore file.

2. Build the Docker image by running the [build-image](build-image.sh) shell
script.

3. Run the image with your edited `example-run-image.sh` shell script and allow
the blockchain to sync. This will take 1-2 days and approximately 25GB of disk
space.
