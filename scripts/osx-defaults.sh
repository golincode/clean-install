#! /usr/bin/env sh


function set_osx_defaults() {
	defaults write -g com.apple.swipescrolldirection -bool true
	defaults write com.apple.Safari ShowStatusBar -bool true
}
