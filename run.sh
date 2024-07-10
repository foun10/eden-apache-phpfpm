#!/usr/bin/env bash

if [[ ! -d "/root/ssl" ]]; then
    mkdir /root/ssl;
    openssl genrsa -out /root/ssl/local.key 2048;
    openssl req -new -key /root/ssl/local.key -out /root/ssl/local.csr -subj \
        "/C=${SSL_COUNTRY}/ST=${SSL_STATE}/L=${SSL_CITY}/O=${SSL_COMPANY}/OU=Development/CN=${SSL_HOST}"
    openssl x509 -req -days 365 -in /root/ssl/local.csr -signkey /root/ssl/local.key -out /root/ssl/local.crt
fi

rm -f /usr/local/apache2/logs/httpd.pid

exec httpd -DFOREGROUND