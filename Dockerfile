FROM ubuntu:20.04
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y nginx
COPY html /var/www/html
RUN date -u > /var/www/html/buildtime.txt
EXPOSE 81
CMD ["nginx", "-g", "daemon off;"]
