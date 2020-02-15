#!/bin/bash
if ! [ -x "$(command --version composer)" ]; then
  cd /var/www/html
  curl -sS https://getcomposer.org/installer | php
  sudo mv composer.phar /usr/local/bin/composer
fi
