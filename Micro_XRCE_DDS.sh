#!/bin/bash

# Clone the specific version of the repository
git clone -b v2.4.3 https://github.com/eProsima/Micro-XRCE-DDS-Agent.git

# Navigate into the cloned repository
cd Micro-XRCE-DDS-Agent

# Create a build directory
mkdir build

# Navigate into the build directory
cd build

# Run cmake to configure the project
cmake ..

# Compile the project with 4 parallel jobs
make -j4

# Install the compiled files
sudo make install

# Update shared library cache
sudo ldconfig /usr/local/lib/

