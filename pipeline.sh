#!/usr/bin/env bash
set -e

DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

cd $DIR/app
./build.sh

cd $DIR/k8s/ilyin-website/
./apply.sh

cd $DIR
