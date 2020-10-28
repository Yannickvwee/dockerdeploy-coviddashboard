#!bin/bash
cd ./nginx
docker build --tag kubmaster/terraformingcloud/coviddashboard_nginx:latest .
docker commit kubmaster/terraformingcloud/coviddashboard_nginx:latest
docker push kubmaster/terraformingcloud/coviddashboard_nginx:latest
cd ../netapp/master
docker build --tag kubmaster/terraformingcloud/coviddashboard_netapp:latest .
docker commit kubmaster/terraformingcloud/coviddashboard_netapp:latest
docker push kubmaster/terraformingcloud/coviddashboard_netapp:latest
