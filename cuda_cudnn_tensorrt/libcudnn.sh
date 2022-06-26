#!/bin/bash
sudo dpkg -i cudnn/trio/libcudnn8_8.2.0.53-1+cuda11.3_amd64.deb
sudo dpkg -i cudnn/trio/libcudnn8-dev_8.2.0.53-1+cuda11.3_amd64.deb
sudo dpkg -i cudnn/trio/libcudnn8-samples_8.2.0.53-1+cuda11.3_amd64.deb

# if can't communicate
# sudo mokutil --disable-validation

cp -r /usr/src/cudnn_samples_v8/ $PWD
cd $PWD/cudnn_samples_v8/mnistCUDNN/
make
./mnistCUDNN
