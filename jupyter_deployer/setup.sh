#!/bin/bash

container_name='my_jupyter_notebook'
directory_name='/data/jupyter/'
sudo chmod -R 777 $directory_name
docker ps | grep $container_name | awk '{print $1}' | xargs -I {} docker stop {}
docker ps -a | grep $container_name | awk '{print $1}' | xargs -I {} docker rm {}

# docker images | grep "/%s" | awk \'{print $3}\' | xargs -I {} docker rmi {}

docker-compose -f /opt/jupyter_deployer/docker-compose.yml up --build -d

sudo cp .gitignore $directory_name
sudo cp /tmp/jupyter_deployer/jupyter_nginx /etc/nginx/sites-enabled/
sudo service nginx restart
rm -rf /tmp/jupyter_deployer
