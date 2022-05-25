#!/usr/bin/env bash
echo "make sure ~/.ssh/docker file is in place"
echo "and has following structure:"
echo "user=USER"
echo "password=PASSWORD"

if [ -f ~/.ssh/docker ]; then
  cat ~/.ssh/docker | awk -F = '/password/ {print $2}' | docker login --username $(cat ~/.ssh/docker | awk -F = '/user/ {print $2}') --password-stdin

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
