# Raspberry Pi Setup

![Raspberry Pi](https://img.shields.io/badge/Raspberry%20Pi-Setup-c51a4a)
![Archived](https://img.shields.io/badge/Status-Archived-red)

This directory contains scripts for setting up a Raspberry Pi device for running MXNet models.

## Contents

- **setup.sh**: Main setup script that installs necessary dependencies and configures the Raspberry Pi
- **build.sh**: Script to build and compile required components

## Usage

1. Run the setup script:
   ```bash
   ./setup.sh
   ```

2. If needed, run the build script:
   ```bash
   ./build.sh
   ```

## Prerequisites

- Raspberry Pi (3 or newer recommended)
- Fresh Raspbian/Raspberry Pi OS install
- Internet connection
- Basic Linux knowledge

## What the Setup Does

The setup script prepares your Raspberry Pi by:
1. Installing required packages and dependencies
2. Setting up Python and required libraries
3. Configuring the environment for MXNet
4. Preparing the device for running deep learning models 