# Ghost with Storage Azure Adapter

This image is base on the official Ghost image and add the Azure Storage Adapter to be ready to use.

## Installation

Clone the [Storage Azure Adpater](https://github.com/jmaitrehenry/ghost-azurestorage) repository locally:
```
git clone https://github.com/jmaitrehenry/ghost-azurestorage.git azure
```

## Build

As simple as:
```bash
GHOST_VERSION=4.9
docker build -t jmaitrehenry/ghost:${GHOST_VERSION}-azurestorage --build-arg GHOST_VERSION=${GHOST_VERSION} .
```