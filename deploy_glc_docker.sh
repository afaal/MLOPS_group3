#!/bin/bash

cat mlops-group3-a574c3671a96.json | docker login -u _json_key_base64 --password-stdin \
https://europe-central2-docker.pkg.dev


https://europe-central2-docker.pkg.dev/mlops-group3

docker build -f Dockerfile . -t gcp_test_app:latest
echo "Built docker image"
docker tag gcp_test_app gcr.io/mlops-group3/gcp_test_app
echo "Tagged docker image"
docker push gcr.io/mlops-group3/gcp_test_app
echo "Pushed to docker"
gcloud config set project mlops-group3
gcloud run deploy gcp_test_app --image gcp_test_app --platform managed --region europe --allow-unauthenticated
gcloud run services list
gcloud run services describe gcp_test_app --region 