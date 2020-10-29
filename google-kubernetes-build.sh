#!bin/bash
#cd ./gitdir/nginx
docker pull yannickvw/coviddashboard_nginx
docker tag yannickvw/coviddashboard_nginx:latest eu.gcr.io/terraformingcloud/coviddashboard_nginx:latest
docker build --tag eu.gcr.io/terraformingcloud/coviddashboard_nginx:latest /gitdir/nginx.
docker push eu.gcr.io/terraformingcloud/coviddashboard_nginx:latest
#cd ../gitdir/netapp/master
docker pull yannickvw/coviddashboard_netapp
docker tag yannickvw/coviddashboard_netapp:latest eu.gcr.io/terraformingcloud/coviddashboard_nginx:netapp
docker build --tag eu.gcr.io/terraformingcloud/coviddashboard_netapp:latest /gitdir/netapp/master.
docker push eu.gcr.io/terraformingcloud/coviddashboard_netapp:latest
