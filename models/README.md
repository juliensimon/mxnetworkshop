# Pre-trained Models

![MXNet](https://img.shields.io/badge/MXNet-Models-orange)
![Archived](https://img.shields.io/badge/Status-Archived-red)

This directory contains scripts for downloading pre-trained MXNet models used in the workshop exercises.

## Contents

- **get_models_from_web.sh**: Download models from a web server
- **get_models_from_s3.sh**: Download models from AWS S3 (requires AWS credentials)
- **get_models_from_s3_http.sh**: Download models from AWS S3 via HTTP (no credentials required)

## Usage

To download the models, use one of the following commands:

1. Download from web:
   ```bash
   ./get_models_from_web.sh
   ```

2. Download from AWS S3 (with credentials):
   ```bash
   ./get_models_from_s3.sh
   ```

3. Download from AWS S3 via HTTP:
   ```bash
   ./get_models_from_s3_http.sh
   ```

## Available Models

The download scripts will fetch the following pre-trained models:

- **Inception-BN**: A deep CNN trained on ImageNet for image classification
- **ResNet**: Residual Network models of various depths
- Other models used in the workshop exercises

## Model Usage

These pre-trained models are used in various exercises throughout the workshop:

- In the MNIST examples for transfer learning
- On the Raspberry Pi for inference
- For integration with AWS services

## Notes

- Some models are large and may take time to download depending on your internet connection
- The models are stored in MXNet format (.params and .json files)
- Make sure you have sufficient disk space before downloading 