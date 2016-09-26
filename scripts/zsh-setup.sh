#! /usr/bin/env sh

function install_oh_my_zsh {
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

function get_new_default_zshrc {
	rm .zshrc
	curl https://raw.githubusercontent.com/golincode/clean-install/master/resources/.zshrc -o .zshrc
}

install_oh_my_zsh
get_new_default_zshrc
