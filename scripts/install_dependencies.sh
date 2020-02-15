#!/bin/bash
if ! [ -x "$(command -v httpd)" ]; 
  then amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2 >&2;   
  exit 1; 
fi # install apache if not already installed

FILE=/var/www/html/.htaccess
if test -f "$FILE"; then
  sudo cp -R /var/www/html/.htaccess /tmp/.htaccess
fi


FILE=/var/www/html/wp-config.php
if test -f "$FILE"; then
  sudo cp -R /var/www/html/wp-config.php /tmp/wp-config.php
fi
