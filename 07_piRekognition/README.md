# Raspberry Pi with AWS Rekognition Integration

![Raspberry Pi](https://img.shields.io/badge/Raspberry%20Pi-Camera-c51a4a)
![AWS](https://img.shields.io/badge/AWS-Rekognition-FF9900)
![AWS](https://img.shields.io/badge/AWS-Polly-FF9900)
![Archived](https://img.shields.io/badge/Status-Archived-red)

This directory contains scripts for integrating AWS Rekognition image analysis with a Raspberry Pi camera system, combined with Polly text-to-speech output.

## Contents

- **classify.py**: Script that uses AWS Rekognition for image analysis
- **camera.py**: Script for camera integration
- **polly.py**: Script that handles AWS Polly text-to-speech functionality
- **rekognition.py**: Script that handles AWS Rekognition image analysis
- **solution/**: Directory containing solution files
  - **classify.py**: Complete solution integrating all components

## Prerequisites

- Raspberry Pi with camera module connected
- Completed setup from previous modules
- AWS account with Rekognition and Polly access
- AWS CLI configured with appropriate credentials
- Speaker or headphones connected to the Raspberry Pi

## Usage

1. Ensure your AWS credentials are properly configured.

2. Run the classification script:
   ```bash
   python classify.py
   ```

3. The script will:
   - Capture images from the Pi camera
   - Send images to AWS Rekognition for analysis
   - Receive detailed image analysis (objects, scenes, faces, etc.)
   - Convert the analysis results to natural language
   - Use AWS Polly to generate speech from the results
   - Play back the audio response

## Features

AWS Rekognition provides several advanced computer vision capabilities:

- Object and scene detection
- Facial analysis and recognition
- Text detection in images
- Content moderation
- Celebrity recognition
- Custom labels

## How It Works

This module demonstrates:
1. Capturing images from the Raspberry Pi camera
2. Uploading images to AWS Rekognition
3. Processing the detailed image analysis results
4. Converting results to natural language descriptions
5. Using AWS Polly to create spoken descriptions
6. Playing back the audio on the Raspberry Pi

## Security Note

This module requires AWS credentials with access to both Rekognition and Polly services. Follow AWS best practices for security and credential management. 