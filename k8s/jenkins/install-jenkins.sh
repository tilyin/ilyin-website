#!/usr/bin/env bash

echo
echo "add bitnami repository"
echo "$ helm repo add bitnami https://charts.bitnami.com/bitnami"
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

echo
echo "pulling repository bitnami/jenkins"
helm pull bitnami/jenkins --untar
helm pull bitnami/jenkins
pwd 
ls -lah

# install jenkins
echo
echo "install Jenkins"
# echo "create jenkins namespace"
# echo "$ kubectl create namespace jenkins"
# $ kubectl create namespace jenkins

echo
echo "$ helm install bitnami-jenkins bitnami/jenkins --values values.yaml --install --namespace jenkins --create-namespace"
helm install bitnami-jenkins bitnami/jenkins --values values.yaml --install --namespace jenkins --create-namespace
