#!/usr/bin/env bash
kubectl delete ns ilyin-website
wait
kubectl apply -f ilyin-website-namespace.yaml
kubectl apply -f www-ilyin-website-secret.yaml
kubectl apply -f www-ilyin-website.yaml
kubectl apply -f www-ilyin-website-ingress.yaml