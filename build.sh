#!/bin/bash

SERVICE=prometheus-es-exporter
VERSION=0.6.0
registry=
sudo docker image rm ${registry}/${SERVICE}:${VERSION}
sudo docker build -f Dockerfile-cetos -t ${registry}/${SERVICE}:$VERSION --build-arg SERVICE=${SERVICE} --build-arg VERSION=${VERSION}  .
sudo docker push ${registry}/${SERVICE}:${VERSION}
