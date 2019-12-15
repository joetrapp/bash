sed -i s/#norepairdefine/define/g /var/www/fortysevenhops/wp-config.php

sed -i s/"define('WP_ALLOW_REPAIR',"/"#norepairdefine('WP_ALLOW_REPAIR',"/g /var/www/fortysevenhops/wp-config.php


