#!/bin/sh

set -eu

docker build -t dclong/rustpython .

docker run --rm dclong/rustpython --help
