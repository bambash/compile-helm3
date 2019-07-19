#! /usr/bin/env bash

docker build . -t gohelm
docker create --name tmpgohelm gohelm
docker cp tmpgohelm:/go/src/helm.sh/helm/bin/helm ./helm3
docker rm -fv tmpgohelm
