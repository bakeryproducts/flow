#!/bin/sh

set -e

#if [ -z "$FILE_DIR" ]; then
#  echo >&2 "FILE_DIR must be set"
#  exit 1
#fi

mlflow server \
    --backend-store-uri sqlite:///${STORE_PATH}/sqlite.db \
    --default-artifact-root file://${ARTIFACT_PATH}/artifacts \
    --host 0.0.0.0 \
    --port $PORT

