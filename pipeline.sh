#!/usr/bin/env bash
set -e
CURRENT=$(pwd)

# folder, where this script is situated
DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo $DIR

echo
cd $DIR/app
./build.sh

echo
cd $DIR/k8s/ilyin-website/
./apply.sh

cd $CURRENT
