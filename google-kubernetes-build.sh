#!bin/bash
#cd ./gitdir/nginx
docker build --tag eu.gcr.io/terraformingcloud/coviddashboard_nginx:latest /gitdir/nginx .
docker push eu.gcr.io/terraformingcloud/coviddashboard_nginx:latest
#cd ../gitdir/netapp/master
docker build --tag eu.gcr.io/terraformingcloud/coviddashboard_netapp:latest /gitdir/netapp/master .
docker push eu.gcr.io/terraformingcloud/coviddashboard_netapp:latest
