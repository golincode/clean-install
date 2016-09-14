#! /usr/bin/env sh

function install_oh_my_zsh {
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

function get_new_default_zshrc {
	rm .zshrc
	curl https://gist.githubusercontent.com/tedslittlerobot/d07814be080024e55769/raw/b9479ff932d81df68d359f7c15468d06a9732b8a/.zshrc -o .zshrc
}

install_oh_my_zsh
get_new_default_zshrc
