#!/usr/bin/env bash
echo 'Installing Pebble SDK Dependencies...'

# Get the Pebble SDK and toolchain
wget https://developer.getpebble.com/2/download/$(PEBBLESDK).tar.gz PebbleSDK.tar.gz
wget http://assets.getpebble.com.s3-website-us-east-1.amazonaws.com/sdk/arm-cs-tools-ubuntu-universal.tar.gz

# Build the Pebble directory
mkdir pebble-dev

cd pebble-dev

# Extract the SDK
tar -zxf ../PebbleSDK.tar.gz
cd $(PEBBLESDK)

# Extract the toolchain
tar -zxf ../../arm-cs-tools-ubuntu-universal.tar.gz

export PATH=~/pebble-dev/PebbleSDK-$(PEBBLESDK)/bin:$PATH








