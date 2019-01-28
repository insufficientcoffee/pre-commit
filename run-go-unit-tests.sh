#!/usr/bin/env bash

GO111MODULE=on go test -tags=unit -timeout 30s -short -v ./...

returncode=$?
if [ $returncode -ne 0 ]; then
  echo "unit tests failed"
  exit 1
fi
