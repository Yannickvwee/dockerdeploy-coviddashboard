#!bin/bash

TOKENPATH=$1

swarmtoken1=$( cat $TOKENPATH )
docker swarm join \
--token ${swarmtoken1} \
10.0.1.10:2377
