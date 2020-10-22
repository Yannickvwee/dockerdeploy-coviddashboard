#!bin/bash
swarmtoken1=$( cat swarmtoken )
docker swarm join \
--token ${swarmtoken1} \
10.0.1.10:2377
