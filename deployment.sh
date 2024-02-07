#!/bin/bash
set -e

# Please create `set-env-vars.sh` file with next variables defined
# export PROJECT_ID=

ARTIFACTS_DIR="./artifacts"

source set-env-vars.sh

if [[ -z "${ARTIFACTS_DIR}" || -z "${PROJECT_ID}" ]]; then
  echo "One or more variables are undefined"
  exit 1
fi

gcloud app deploy "$ARTIFACTS_DIR" --appyaml=app.yaml --project "$PROJECT_ID"
