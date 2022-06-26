#!/bin/bash
# download cudnn-11.3-linux-x64-v8.2.1.32.tgz first
tar -xzvf cudnn-11.3-linux-x64-v8.2.1.32.tgz
sudo cp cuda/include/cudnn*.h /usr/local/cuda/include 
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda/lib64 
sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*
