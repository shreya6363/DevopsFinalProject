#!/bin/bash


value = $(docker ps -q | head -n 1)
if [[ value != "" ]]; then
   echo "already containers are running...";
   echo "Stoping the running container...";
   docker-compose down;
   echo "Containers are down now...!";
fi

echo "Deploying the containers..."
docker-compose up -d
sleep 30
echo "Deployment completed...!"
echo "Check http://localhost:80/"


echo "done"

echo "done"
echo "done"
echo "done"
echo "done"
echo "done"
echo "done"
echo "done"
echo "done"
echo "done"
echo "done"
echo "done"
echo "done"

echo "done"

echo "done"

echo "done"
echo "done"