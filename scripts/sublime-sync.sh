#! /usr/bin/env sh

function symlink_sublime_settings {
	cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
	rm -r User
	ln -s ~/Dropbox/.sublime-3/User
}

function check_for_sublime_and_dropbox {
	# If there is a folder `~/Dropbox/.sublime-3/User`
	# Sync sublime settings
	symlink_sublime_settings
}

check_for_sublime_and_dropbox
