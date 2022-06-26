#!/bin/bash
#sudo apt update
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo dpkg -i cuda-repo-ubuntu2004-11-2-local_11.2.0-460.27.04-1_amd64.deb

sudo apt-key add /var/cuda-repo-ubuntu2004-11-2-local/7fa2af80.pub
sudo apt update

sudo apt-get install -y cuda
#sudo apt-get -y install cuda-11-2


