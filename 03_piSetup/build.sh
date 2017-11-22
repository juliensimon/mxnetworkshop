#!/bin/bash
sudo apt-get update
sudo apt-get install -y build-essential git
sudo apt-get install -y \
	libopenblas-dev liblapack-dev libatlas-base-dev \
	libcurl4-openssl-dev libopencv-dev python-numpy
git clone --recursive https://github.com/apache/incubator-mxnet.git mxnet --branch 0.12.1
cd mxnet
make USE_S3=1 USE_OPENCV=1 USE_BLAS=openblas
