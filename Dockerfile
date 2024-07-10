FROM httpd
MAINTAINER Alexander Schneider <schneider@foun10.de>

RUN DEBIAN_FRONTEND=noninteractive apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y openssl

# Add custom config
ADD httpd.conf /usr/local/apache2/conf/httpd.conf
ADD run.sh /usr/bin/run
RUN chmod +x /usr/bin/run

ENV PHP_HOST php
ENV PHP_PORT 9000
ENV APP_DIR '/var/www/html'
ENV SSL_COUNTRY 'DE'
ENV SSL_STATE 'BW'
ENV SSL_CITY 'FREIBURG'
ENV SSL_COMPANY 'foun10'
ENV SSL_HOST 'localhost'
EXPOSE 80 443
CMD ["/bin/bash", "/usr/bin/run"]