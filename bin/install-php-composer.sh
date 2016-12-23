php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === 'c32408bcd017c577ce80605420e5987ce947a5609e8443dd72cd3867cc3a0cf442e5bf4edddbcbe72246a953a6c48e21') { echo 'Installer verified';  } else { echo 'Installer corrupt'; unlink('composer-setup.php');  } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

mv ./composer.phar /usr/local/bin/composer

composer config -g repo.packagist composer https://packagist.phpcomposer.com
