# MNIST Examples

![MXNet](https://img.shields.io/badge/MXNet-MNIST-orange)
![Archived](https://img.shields.io/badge/Status-Archived-red)

This directory contains scripts and notebooks for training and evaluating deep learning models on the MNIST handwritten digit dataset using MXNet.

## Contents

- **trainMlp.py/ipynb**: Train a Multi-Layer Perceptron (MLP) on MNIST
- **trainLeNet.py/ipynb**: Train a LeNet Convolutional Neural Network on MNIST
- **predict.py/ipynb**: Scripts for making predictions using trained models
- **get_mnist_from_web.sh**: Download MNIST dataset from the web
- **get_mnist_from_s3.sh**: Download MNIST dataset from AWS S3
- **get_mnist_from_s3_http.sh**: Download MNIST dataset from AWS S3 via HTTP
- **0.png - 9.png**: Sample digit images for testing

## Getting Started

1. Download the MNIST dataset:
   ```bash
   ./get_mnist_from_web.sh
   ```

2. Train an MLP model:
   ```bash
   python trainMlp.py
   ```
   or use the Jupyter notebook `trainMlp.ipynb`

3. Train a LeNet model:
   ```bash
   python trainLeNet.py
   ```
   or use the Jupyter notebook `trainLeNet.ipynb`

4. Make predictions:
   ```bash
   python predict.py
   ```
   or use the Jupyter notebook `predict.ipynb`

## Models

- **MLP (Multi-Layer Perceptron)**: A simple feedforward neural network
- **LeNet**: A convolutional neural network architecture designed for handwritten and machine-printed character recognition 