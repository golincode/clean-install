#! /usr/bin/env sh

function app_store_check {
	open /Applications/App\ Store.app

	# @todo - prompt to check / do things
	# App store - sign in and check it’s working
	# App store - any downloads
}

function sys_prefs_check {
    open /Applications/System\ Preferences.app

	# @todo - prompt to check / do things
	# setup mouse / trackpad
	# setup screens (rotation, etc.)
	# setup keyboard - key repeat, F1 keys, etc.
	# disable any profiles that are bollocks
}

app_store_check
sys_prefs_check
