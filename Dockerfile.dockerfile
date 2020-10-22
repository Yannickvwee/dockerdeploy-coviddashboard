FROM nginx:latest
COPY ./master /usr/share/nginx/html/COVIDdashboard
RUN service nginx start
EXPOSE 80