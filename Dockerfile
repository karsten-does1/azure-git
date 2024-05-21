FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y nginx
COPY  demo-site /var/www/html
RUN date -u > /var/www/html/buildtime.txt
EXPOSE 81
CMD ["nginx", "-g", "daemon off;"]