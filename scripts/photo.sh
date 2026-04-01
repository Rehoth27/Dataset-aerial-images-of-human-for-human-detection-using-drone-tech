#!/bin/bash
# Simple auto photo capture script for Raspberry Pi USB camera

# Create a folder for photos (if it doesn’t exist)
mkdir -p ~/photos

# Generate a timestamp (e.g. 2025-11-11_17-55-30)
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

# Capture photo using fswebcam with stable settings
fswebcam -r 1280x720 -p MJPEG --no-banner --skip 20 --delay 3 ~/photos/photo_$timestamp.jpg
# delay and skipping the first few  images to avoid clicking presetup images which are not loaded and black

echo "📸 Photo saved as ~/photos/photo_$timestamp.jpg"
