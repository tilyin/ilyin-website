#!/usr/bin/env bash
echo "Installation of cert-manager" > ./install.log
echo >> ./install.log

echo "add jetstack helm repo" >> ./install.log
helm repo add jetstack https://charts.jetstack.io >> ./install.log
echo >> ./install.log

echo "update helm repo" >> ./install.log
helm repo update >> ./install.log
echo >> ./install.log

echo "install Custom Resource Definitions" >> ./install.log
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.8.0/cert-manager.crds.yaml >> ./install.log
echo >> ./install.log

echo "save cert-manager chart template" >> ./install.log
helm template \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.8.0 \
  > ./cert-manager.chart.template.yaml
  echo >> ./install.log

echo "pull cert-manager from jetstack/cert-manager repo" >> ./install.log
echo >> ./install.log
echo "helm pull jetstack/cert-manager" >> ./install.log
helm pull jetstack/cert-manager
echo "helm pull jetstack/cert-manager --untar" >> ./install.log
helm pull jetstack/cert-manager --untar
echo >> ./install.log

echo "install cert-manager" >> ./install.log
helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.8.0 \
>> ./install.log
echo >> ./install.log