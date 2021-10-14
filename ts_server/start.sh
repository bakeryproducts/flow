#!/bin/bash
docker run --rm \
    -d \
    --name torchserve \
    -p 3080:3080 \
    -p 3081:3081 \
    -p 3082:3082 \
    -v $(pwd)/model-store:/home/model-server/model-store \
    sokolov/ts_server \
    "sleep infinity"
    # torchserve --ts-config=config.properties --start --model-store model-store --models all && \
    # "sleep 5" && \
    # ln -sf /proc/1/fd/1 /home/model-server/logs/ts_log.log  && \
