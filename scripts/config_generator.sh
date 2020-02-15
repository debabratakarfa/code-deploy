cd /var/www/html
sudo rm wp-config.php

FILE=/tmp/wp-config.php
if test -f "$FILE"; then
  sudo cp -R /tmp/wp-config.php /var/www/html/wp-config.php
  sudo rm /tmp/wp-config.php
fi

FILE=/tmp/.htaccess
if test -f "$FILE"; then
  sudo cp -R /tmp/.htaccess /var/www/html/.htaccess
  sudo rm /tmp/.htaccess
fi
