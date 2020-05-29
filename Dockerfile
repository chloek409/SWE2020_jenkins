FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y apache2 && apt clean
ENTRYPOINT apachectl -D FOREGROUND
ADD ./index.html /var/www/html/
