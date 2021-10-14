#!/bin/bash
docker exec \
    -u 0 \
    torchserve \
    bash -c \
    "torchserve --ts-config=config.properties --start --model-store model-store --models all"
