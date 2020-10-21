#!bin/bash

#path to save the swarmtoken
TOKENPATH=$1

git clone https://github.com/broadinstitute/covid19-testing.git ./nginx/master
git clone https://github.com/looking4ward/nhs-cac-docker-dotnetwebapp.git ./netapp/master
cp ./Dockerfile.dockerfile ./nginx/Dockerfile
docker swarm init
docker swarm join-token worker -q > $TOKENPATH
