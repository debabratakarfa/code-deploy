cd /var/www/html

wp db drop --yes
wp db create
wp db import db.sql
wp search-replace 'https://local.3diligent.com' 'https://stage-marketing.3diligent.com' --skip-columns=gui
