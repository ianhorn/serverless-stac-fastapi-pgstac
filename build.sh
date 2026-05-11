#!/usr/bin/env bash

docker build --platform linux/amd64 \
  -t stac-fastapi-pgstac-layer:latest . && \
docker run --rm \
  --platform linux/amd64 \
  -v $(pwd):/local \
  --entrypoint /bin/sh \
  stac-fastapi-pgstac-layer:latest \
  -c "./create-lambda-layer.sh"