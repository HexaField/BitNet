#!/bin/bash

# Ensure emsdk is activated
source ./emsdk/emsdk_env.sh

# Create build directory for WebAssembly
mkdir -p build_wasm
cd build_wasm

# Configure with CMake
echo "Trying CMake approach with temporary file replacement..."
cp ../CMakeLists.txt ../CMakeLists.txt.backup
cp ../CMakeLists.wasm.txt ../CMakeLists.txt
emcmake cmake ..
mv ../CMakeLists.txt.backup ../CMakeLists.txt

# Build
emmake make

# Copy output files to a dist directory
mkdir -p ../dist
cp bitnet_wasm.js ../dist/
cp bitnet_wasm.wasm ../dist/

echo "Build complete. Output files are in the dist directory."
