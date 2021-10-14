#!/bin/bash
docker run \
    --rm \
    -it \
    -u 0 \
    -v $(pwd):/src \
    sokolov/ts_server \
    "cd /src  && \
    torch-model-archiver --model-name fastrcnn --version 1.0 --model-file model.py --serialized-file fasterrcnn_resnet50_fpn_coco-258fb6c6.pth  --handler object_detector  --extra-files ./index_to_name.json  --export-path model-store -f "
