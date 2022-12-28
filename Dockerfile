FROM ubuntu:18.04
MAINTAINER jkouassi (kouassi.joel052@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx git curl
RUN git clone https://github.com/diranetafen/static-website-example.git
EXPOSE 80
ADD static-website-example/ /var/www/html/
ENTRYPOINT [ "nginx", "-q", "daemon off;" ]
