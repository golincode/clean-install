#! /usr/bin/env sh

function install_homebrew {
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"	
}

function install_cask {
	brew tap caskroom/cask
	brew tap caskroom/versions
}

function install_cli_tools {
	# first install the hilarious things
	brew install figlet sl cowsay
	# then the useful things
	brew install rbenv wget 
	# then some other tools
	brew install git-flow geoip lynx awscli ledger tig ncdu tree z
}

function install_utility_apps {
	brew cask install --appdir=/Applications alfred launchbar lastpass karabiner seil virtualbox vagrant controlplane dropbox the-unarchiver caffeine iterm2

	# Open some apps to let the user configure them
	open /Applications/Dropbox.app
	open /Applications/Karabiner.app
	open /Applications/Seil.app
}

function install_dev_apps {
	brew cask install --appdir=/Applications tower sequel-pro textmate sublime-text atom google-chrome firefox sketch
	open /Applications/Sublime\ Text.app
}

function install_office_apps {
	brew cask install --appdir=/Applications insomnia paw omnigraffle evernote google-drive
}

function install_fun_apps {
	brew cask install --appdir=/Applications spotify slack mplayerx xscreensaver steam skype whatsapp
}

install_homebrew
install_cask
install_cli_tools
install_utility_apps
install_dev_apps
install_office_apps
install_fun_apps
