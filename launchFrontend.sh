#!/bin/bash

# Vérifiez si Node.js est installé
if ! [ -x "$(command -v node)" ]; then
  echo 'Error: Node.js is not installed. Please install Node.js and try again.' >&2
  exit 1
fi

# Vérifiez si npm est installé
if ! [ -x "$(command -v npm)" ]; then
  echo 'Error: npm is not installed. Please install npm and try again.' >&2
  exit 1
fi

# Installez Angular CLI s'il n'est pas déjà installé
if ! [ -x "$(command -v ng)" ]; then
  echo 'Installing Angular CLI...'
  npm install -g @angular/cli
fi

# Allez dans le dossier frontend et lancez ng serve
cd frontend
ng serve
```
