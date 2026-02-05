# Use the official httpd image as the base
FROM ubuntu:latest
RUN apt-get -y update && apt-get -y install nginx

# Copy local files from the 'htmp' directory to the container's web root
COPY ./var/www/html/* /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

