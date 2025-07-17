# Raspberry Pi Models

![Raspberry Pi](https://img.shields.io/badge/Raspberry%20Pi-Models-c51a4a)
![MXNet](https://img.shields.io/badge/MXNet-Inference-orange)
![Archived](https://img.shields.io/badge/Status-Archived-red)

This directory contains scripts for running pre-trained deep learning models on a Raspberry Pi.

## Contents

- **classify.py**: Main script to classify images using pre-trained models
- **image.jpg**: Sample image for testing classification
- **solution/**: Directory containing solution files
  - **classify.ipynb**: Jupyter notebook with classification solution
  - **classify.py**: Python script with classification solution

## Usage

1. Ensure your Raspberry Pi is set up according to the instructions in the `03_piSetup` directory.

2. Run the classification script:
   ```bash
   python classify.py image.jpg
   ```

3. For a guided walkthrough, open the solution notebook:
   ```bash
   jupyter notebook solution/classify.ipynb
   ```

## Prerequisites

- Completed setup from `03_piSetup`
- Pre-trained models (download using scripts in the `models/` directory)
- Python 3 with required packages installed

## Expected Results

The classify script will load a pre-trained model and classify the provided image, displaying the predicted class and confidence score. 