#!/usr/bin/env bash
CONF_DIR=$(pwd)
rm ~/.kube/config
ln -s $CONF_DIR/config $HOME/.kube/