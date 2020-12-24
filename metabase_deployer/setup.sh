#!/bin/bash

container_name='my_metabase'

docker ps | grep $container_name | awk '{print $1}' | xargs -I {} docker stop {}
docker ps -a | grep $container_name | awk '{print $1}' | xargs -I {} docker rm {}

# docker images | grep "/%s" | awk \'{print $3}\' | xargs -I {} docker rmi {}

docker-compose -f /opt/metabase_deployer/docker-compose.yml up -d

sudo cp /tmp/metabase_deployer/metabase_nginx /etc/nginx/sites-enabled/
sudo service nginx restart
rm -rf /tmp/metabase_deployer
