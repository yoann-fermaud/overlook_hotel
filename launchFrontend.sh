#!/bin/bash

# Check if node is installed
if ! [ -x "$(command -v node)" ]; then
  echo 'Error: Node.js is not installed. Please install Node.js and try again.' >&2
  exit 1
fi

# Check if npm is installed
if ! [ -x "$(command -v npm)" ]; then
  echo 'Error: npm is not installed. Please install npm and try again.' >&2
  exit 1
fi

# Install Angular CLI if not already installed
if ! [ -x "$(command -v ng)" ]; then
  echo 'Installing Angular CLI...'
  npm install -g @angular/cli
fi

# Go to frontend folder and run ng serve
cd frontend
ng serve
```
