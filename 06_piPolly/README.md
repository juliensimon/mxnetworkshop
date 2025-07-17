# Raspberry Pi with AWS Polly Integration

![Raspberry Pi](https://img.shields.io/badge/Raspberry%20Pi-Camera-c51a4a)
![AWS](https://img.shields.io/badge/AWS-Polly-FF9900)
![MXNet](https://img.shields.io/badge/MXNet-Inference-orange)
![Archived](https://img.shields.io/badge/Status-Archived-red)

This directory contains scripts for integrating AWS Polly text-to-speech service with MXNet image classification on a Raspberry Pi.

## Contents

- **classify.py**: Script that combines image classification with spoken results
- **camera.py**: Script for camera integration
- **polly.py**: Script that handles AWS Polly text-to-speech functionality
- **setup.sh**: Script to set up AWS credentials and required packages
- **solution/**: Directory containing solution files
  - **classify.py**: Complete solution for classification with speech output

## Prerequisites

- Raspberry Pi with camera module connected
- Completed setup from previous modules
- AWS account with Polly access
- AWS CLI configured with appropriate credentials
- Speaker or headphones connected to the Raspberry Pi

## Setup

1. Run the setup script to configure AWS credentials and install required packages:
   ```bash
   ./setup.sh
   ```

## Usage

1. Run the classification script:
   ```bash
   python classify.py
   ```

2. The script will:
   - Capture images from the Pi camera
   - Classify the images using MXNet
   - Send the classification results to AWS Polly
   - Play back the synthesized speech output

## AWS Configuration

Ensure your AWS credentials are properly configured with access to Polly. The setup script will help configure this, but you may need to:

1. Create an IAM user with Polly permissions
2. Configure AWS CLI with the credentials
3. Set the appropriate AWS region

## How It Works

This module demonstrates:
1. Capturing and classifying images (as in previous modules)
2. Converting classification results to natural language
3. Sending text to AWS Polly for speech synthesis
4. Playing back the audio response on the Raspberry Pi 