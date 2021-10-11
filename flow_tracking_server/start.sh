#!/bin/bash
PORT=5000
STORE_PATH=/mnt/store
ARTIFACT_PATH=/mnt/artifacts
docker run \
    --name mlflow-tracking-server \
    --rm \
    -d \
    -p $PORT:$PORT \
    -e PORT=$PORT \
    -v flow_storage:$STORE_PATH \
    -v flow_artifacts:$ARTIFACT_PATH \
    -e STORE_PATH=$STORE_PATH \
    -e ARTIFACT_PATH=$ARTIFACT_PATH \
    flow/flow-tracking-server:0.1
