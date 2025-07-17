# MXNet on Raspberry Pi with Camera

![Raspberry Pi](https://img.shields.io/badge/Raspberry%20Pi-Camera-c51a4a)
![MXNet](https://img.shields.io/badge/MXNet-Inference-orange)
![Archived](https://img.shields.io/badge/Status-Archived-red)

This directory contains scripts for running MXNet models with camera integration on a Raspberry Pi.

## Contents

- **classify.py**: Script for real-time image classification using Pi camera
- **classify.ipynb**: Jupyter notebook for image classification
- **setup.sh**: Script to set up camera and required packages
- **testCamera.py**: Script to test the Raspberry Pi camera
- **solution/**: Directory containing solution files
  - **camera.py**: Solution for camera integration
  - **classify.py**: Solution for image classification

## Prerequisites

- Raspberry Pi with camera module connected
- Completed setup from `03_piSetup`
- Pre-trained models (download using scripts in the `models/` directory)

## Setup

1. Run the setup script to configure the camera:
   ```bash
   ./setup.sh
   ```

2. Test the camera to ensure it's working correctly:
   ```bash
   python testCamera.py
   ```

## Usage

1. Run the classification script for real-time classification:
   ```bash
   python classify.py
   ```

2. Alternatively, use the Jupyter notebook for an interactive experience:
   ```bash
   jupyter notebook classify.ipynb
   ```

## How It Works

This module demonstrates:
1. Capturing images from the Raspberry Pi camera
2. Processing images for inference
3. Running MXNet inference on the captured images
4. Displaying results in real-time 