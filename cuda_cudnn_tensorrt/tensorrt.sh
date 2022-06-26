#!/bin/bash

os="ubuntu2004"
tag="cuda11.6-trt8.4.1.5-ga-20220604"
sudo dpkg -i nv-tensorrt-repo-${os}-${tag}_1-1_amd64.deb
sudo apt-key add /var/nv-tensorrt-repo-${os}-${tag}/*.pub

sudo apt-get update
sudo apt-get install tensorrt -y

#sudo apt-get install onnx-graphsurgeon uff-converter-tf
#python3 -m pip install protobuf
