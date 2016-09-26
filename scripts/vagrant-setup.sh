#! /usr/bin/env sh

function setup_old_homestead {
	# Download a specific box version
	vagrant box add laravel/homestead --box-version 0.3.3

	# install homestead tools
	composer global require laravel/homestead v2.1.8

	# init homestead
	~/.composer/vendor/bin/homestead init
}

function port_forwarding {
	echo st /etc/pf.conf

	echo add

	echo    rdr pass on lo0 inet proto tcp from any to 127.0.0.1 port 80 -> 127.0.0.1 port 8000

	echo after the last `rdr-anchor` (the last of the translation rules)

	echo run
	echo sudo pfctl -evf /etc/pf.conf
}
