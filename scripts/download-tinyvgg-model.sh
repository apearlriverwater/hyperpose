#!/bin/sh

set -e

model_name="hao28-600000-256x384.uff"

cd $(dirname $0)
if [ ! -d ../data/models ]; then
    mkdir -p ../data/models
fi
cd ../data/models

echo "Installing $model_name ..."
if [ ! -f "$model_name" ]; then
    URL="https://media.githubusercontent.com/media/tensorlayer/pretrained-models/master/models/hyperpose/$model_name"
    curl -vLOJ $URL
fi

echo "$model_name installed!"
