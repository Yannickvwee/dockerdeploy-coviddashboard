To setup the instance as swarm manager, run swarmmanager.sh
for worker run swarmworker.sh

These scripts expect to be given a file with the swarm token, we used an EFS to achieve this.
Docker is not installed with the scripts.

After running the script, on the manager run docker compose-build and docker-compose up.
Optionally you can run this to get portainer on your manager.

docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
