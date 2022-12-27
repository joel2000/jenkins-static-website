FROM nginx
MAINTAINER jkouassi (kouassi.joel052@gmail.com)
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl && \
    apt-get install -y git
EXPOSE 80
RUN rm -Rf /usr/share/nginx/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
ENTRYPOINT ["nginx", "-q", "deamon off;"]
