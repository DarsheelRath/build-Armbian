#!/bin/bash
# Executed inside target image chroot prior to image creation

# Update package lists and install basic dependencies
apt-get update
apt-get install -y curl ca-certificates

# Install uv globally for all users into /usr/local/bin
curl -LsSf https://astral.sh/uv/install.sh | env UV_INSTALL_DIR="/usr/local/bin" sh

# Install Node.js and npm via apt
apt-get install -y nodejs npm

# Clean up apt caches to keep the image small
apt-get clean
