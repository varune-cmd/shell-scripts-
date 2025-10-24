#!/bin/bash
# ---------------------------------------------------
# Script to install AWS CLI v2 on Ubuntu
# Author: Varun (DevOps Engineer)
# ---------------------------------------------------

# Exit immediately if a command exits with a non-zero status
set -e

echo "🔹 Updating system packages..."
sudo apt update -y

echo "🔹 Installing required dependencies (unzip, curl)..."
sudo apt install -y unzip curl

echo "🔹 Downloading the AWS CLI v2 installer..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

echo "🔹 Unzipping the installer..."
unzip -o awscliv2.zip

echo "🔹 Running the installation script..."
sudo ./aws/install

echo "✅ AWS CLI installation complete!"

# Verify installation
echo "🔹 Checking AWS CLI version..."
aws --version

# Cleanup (optional)
echo "🧹 Cleaning up temporary files..."
rm -rf awscliv2.zip aws

echo "🎉 AWS CLI is ready to use! Try running: aws configure"

