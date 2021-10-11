#!/bin/sh

set -e

# TODO bash env set check?
#if [ -z "$FILE_DIR" ]; then
#  echo >&2 "FILE_DIR must be set"
#  exit 1
#fi

mlflow server \
    --backend-store-uri sqlite:///${STORE_PATH}/sqlite.db \
    --default-artifact-root file://${ARTIFACT_PATH} \
    --host 0.0.0.0 \
    --port ${FLOW_SERVER_PORT}

