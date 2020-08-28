  
FROM debian:buster

LABEL maintainer="Lamine Kaba <lkaba@42.us.org>"

#updating packages and install utility
RUN apt-get update -y && apt-get upgrade -y \
php libapache2-mod-php
ENTRYPOINT ["/bin/sh", "system apache2 restart"]