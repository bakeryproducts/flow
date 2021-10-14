#!/bin/bash
docker exec \
    -u 0 \
    --entrypoint \
    bash -c \
    "cd /src  && \
    torch-model-archiver --model-name resnet34 \
    --version 2.0 \
    --serialized-file resnet34.pt \
    --extra-files ./index_to_name.json \
    --handler my_handler.py  \
    --export-path model-store -f \ " \
    torchserve \

