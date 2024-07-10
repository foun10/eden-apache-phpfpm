EDEN - APACHE FOR PHPFPM
========================

General information
-------------------
This image provides a apache web server for use with php fpm with ssl enabled.

Environment variables
---------------------

| Name        | Description                                       | possible values (/format) | default       | mandatory |
|-------------|---------------------------------------------------|---------------------------|---------------|-----------|
| PHP_HOST    | The host for the php fpm service.                 | any valid host            | php           | n         |
| PHP_PORT    | The port for the php fpm service.                 | any valid port            | 9000          | n         |
| APP_DIR     | The application directory which you have mounted. | any valid path            | /var/www/html | n         |
| SSL_COUNTRY | The country code for the ssl certificate.         | ISO2                      | DE            | n         |
| SSL_STATE   | The state code for the ssl certificate.           | any valid state           | BW            | n         |
| SSL_CITY    | The city for the ssl certificate.                 | any valid city            | FREIBURG      | n         |
| SSL_COMPANY | The company for the ssl certificate.              | any valid company name    | foun10        | n         |
| SSL_HOST    | The host for the ssl certificate.                 | any valid host            | localhost     | n         |