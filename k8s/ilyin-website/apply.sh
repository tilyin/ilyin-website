#!/usr/bin/env bash
kubectl apply -f ilyin-website-namespace.yaml
kubectl apply -f www-ilyin-website.yaml
kubectl apply -f ilyin-website-ingress.yaml