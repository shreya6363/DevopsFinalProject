#!/bin/bash

set -e;

REP=$1
echo $1;
VERSION=$2;
echo $2;

DOCKER_REGISTRY_URI="shreya6363"
DOCKERPATH="Dockerfile.dev"
echo $rep



if [[ $1 == "" ]]; then
  echo "error: you must enter the version tag";
  exit 1;
fi;


echo 'Docker building...'
docker build . -f $DOCKERPATH -t $DOCKER_REGISTRY_URI/$REP:$VERSION 

echo 'Setting docker tag...';
IMAGE_ID=$(docker images -q | head -n 1);
docker tag $IMAGE_ID $DOCKER_REGISTRY_URI/$REP:$VERSION;
docker tag $IMAGE_ID $DOCKER_REGISTRY_URI/$REP:latest;
echo "docker tag done"

echo 'Pushing docker image...';
docker push $DOCKER_REGISTRY_URI/$REP:$VERSION;
docker push $DOCKER_REGISTRY_URI/$REP:latest;

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
# echo 'Setting git tag...';

# if [[ $4 == "" ]]; then
#   git tag -a v$VERSION;
# else
#   git tag -a v$VERSION -m "$4";
# fi

# echo 'Pushing git tag...';
# git push origin v$VERSION;

# echo 'Done!';