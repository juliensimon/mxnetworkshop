# MXNet Workshop

![Archived](https://img.shields.io/badge/Status-Archived-red)
![MXNet](https://img.shields.io/badge/MXNet-Workshop-orange)
![Python](https://img.shields.io/badge/Python-3.x-blue)

> **Note**: This repository is archived and no longer actively maintained.

A comprehensive workshop for learning and implementing deep learning models using MXNet, with examples ranging from basic concepts to deployment on Raspberry Pi and integration with AWS services.

## Overview

This repository contains notebooks, scripts, and resources for a hands-on MXNet workshop. It covers everything from basic MXNet API usage to deploying models on edge devices and integrating with cloud services.

## Repository Structure

- **00_mxnet_api.ipynb**: Introduction to MXNet API
- **01_introduction.ipynb/py**: Basic concepts and introduction to MXNet
- **02_mnist/**: Training and prediction with MNIST dataset
  - Training models (MLP and LeNet)
  - Prediction examples
  - Dataset download scripts
- **03_piSetup/**: Scripts for setting up Raspberry Pi devices
- **04_piModels/**: Running models on Raspberry Pi
- **05_piMxnet/**: MXNet on Raspberry Pi with camera integration
- **06_piPolly/**: Integrating AWS Polly with Pi applications
- **07_piRekognition/**: Using AWS Rekognition with Pi applications
- **models/**: Pre-trained models and download scripts

## Getting Started

### Prerequisites

- Python 3.x
- MXNet
- Jupyter Notebook
- AWS account (for Polly and Rekognition examples)
- Raspberry Pi (for Pi-specific examples)

### Setup

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/mxnetworkshop.git
   cd mxnetworkshop
   ```

2. Download the MNIST dataset and models:
   ```
   cd 02_mnist
   ./get_mnist_from_web.sh
   
   cd ../models
   ./get_models_from_web.sh
   ```

3. For EC2 setup (optional):
   ```
   ./ec2_setup.sh
   ```

4. For Raspberry Pi setup:
   ```
   cd 03_piSetup
   ./setup.sh
   ```

## Workshop Modules

### 1. MXNet Introduction
Learn the basics of MXNet and its API.

### 2. MNIST Examples
Train and evaluate models on the MNIST dataset:
- Multi-layer Perceptron (MLP)
- LeNet Convolutional Neural Network

### 3-5. Raspberry Pi Deployment
Set up and run MXNet models on Raspberry Pi devices, including camera integration.

### 6-7. AWS Integration
Integrate AWS services with your Pi applications:
- AWS Polly for text-to-speech
- AWS Rekognition for image recognition

## Cleanup

When finished with EC2 instances:
```
./ec2_cleanup.sh
```

## License

[Include appropriate license information here]

## Acknowledgments

- MXNet team and contributors
- AWS for cloud services integration examples 