FROM nginx:latest
COPY ./nginx/master /usr/share/nginx/html/COVIDdashboard
RUN service nginx start
EXPOSE 80