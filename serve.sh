#!/bin/bash

# Check if Python 3 is installed
if command -v python3 &>/dev/null; then
    echo "Starting server with Python 3..."
    cd dist && python3 -m http.server 8000
elif command -v python &>/dev/null; then
    echo "Starting server with Python..."
    cd dist && python -m SimpleHTTPServer 8000
else
    echo "Python is not installed. Please install Python to run the server."
    exit 1
fi
