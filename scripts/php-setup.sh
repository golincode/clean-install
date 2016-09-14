#! /usr/bin/env sh

function install_php {
	curl -s http://php-osx.liip.ch/install.sh | bash -s 7.0 sudo apachectl stop
}

function install_composer {
	curl -sS https://getcomposer.org/installer | php
	chmod +x composer.phar
	mv composer.phar /usr/local/bin/composer
}

install_php
install_composer
