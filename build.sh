#!bin/bash
cd ./nginx
docker build --tag yannickvw/coviddashboard_nginx:latest .
docker commit yannickvw/coviddashboard_nginx:latest
docker push yannickvw/coviddashboard_nginx:latest
cd ../netapp/master
docker build --tag yannickvw/coviddashboard_netapp:latest .
docker commit yannickvw/coviddashboard_netapp:latest
docker push yannickvw/coviddashboard_netapp:latest
