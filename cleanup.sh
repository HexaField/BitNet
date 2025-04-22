#!/bin/bash

# Remove unnecessary files
rm -f dist/gguf.html
rm -f dist/bitnet_gguf.js
rm -f dist/bitnet_gguf_cdn.js
rm -f dist/bitnet_simple.html
rm -f dist/bitnet_wasm.html
rm -f dist/bitnet_direct.html
rm -f src/bitnet_gguf.js
rm -f src/bitnet_llm.cpp

echo "Cleanup complete. Only essential files remain."
