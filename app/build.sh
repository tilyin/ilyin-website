#!/usr/bin/env bash
echo "make sure ~/.ssh/docker file is in place"
echo "and has following structure:"
echo "user=USER"
echo "password=PASSWORD"

USER=$(cat ~/.ssh/docker | awk -F = '/user/ {print $2}')
PASSWORD=$(cat ~/.ssh/docker | awk -F = '/password/ {print $2}')

if [ -f ~/.ssh/docker ]; then
  echo $PASSWORD | docker login --username $USER --password-stdin

  if [[ $?>0 ]]; then
    echo -e "login unsuccessful, check credentials"
    exit 1
  fi

else
  echo "file does not exist"
  exit 1
fi

docker build -t tilyin/www-ilyin-website:latest .
docker push tilyin/www-ilyin-website

doctl registry login

docker build -t registry.digitalocean.com/tilyin-repo/www-ilyin-website:latest .
docker push registry.digitalocean.com/tilyin-repo/www-ilyin-website