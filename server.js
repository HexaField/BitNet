const express = require('express');
const path = require('path');
const app = express();
const port = 8000;

// Serve static files from the dist directory
app.use(express.static(path.join(__dirname, 'dist')));

// Add CORS headers for WebAssembly multi-threading
app.use((req, res, next) => {
  res.setHeader('Cross-Origin-Embedder-Policy', 'require-corp');
  res.setHeader('Cross-Origin-Opener-Policy', 'same-origin');
  next();
});

// Serve node_modules for the wllama library
app.use('/node_modules', express.static(path.join(__dirname, 'node_modules')));

// Start the server
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
  console.log(`BitNet GGUF Chat available at http://localhost:${port}/bitnet.html`);
});
