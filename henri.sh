#!/bin/bash
set -ex

source ~/.secrets/gcp-defaults.sh

cd $(dirname $0)

gcloud builds submit --tag gcr.io/$GCP_HENRI_PROJECT/wetty-build .
docker tag gcr.io/hfdexp-222920/wetty-build columnated/wetty-build
docker push columnated/wetty-build
