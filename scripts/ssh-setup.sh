#! /usr/bin/env sh

function generate_ssh_keys() {
	# @todo - ask for email address
	ssh-keygen -C shorner@golin.com
	ssh-add -K ~/.ssh/id_rsa
	cat ~/.ssh/id_rsa.pub | pbcopy
}
