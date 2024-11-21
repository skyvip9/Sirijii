# Use the official Ubuntu 22.04 LTS base image
FROM ubuntu:22.04

# Update package list and install essential packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    build-essential \
    curl \
    git \
    vim \
    sudo \
    ca-certificates \
    gnupg \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

# Set default shell to bash
SHELL ["/bin/bash", "-c"]

# Set the working directory
WORKDIR /workspace

# Optional: Install any additional dependencies