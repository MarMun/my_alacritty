#!/bin/bash

if ! [ -e ~/.config ]; then
	mkdir ~/.config
else
	echo "~/.config - folder found"
fi

link_target=~/.config/alacritty

if ! [ -e $link_target ]; then
	echo "create softlink from repo to config location"
	echo "(it's $link_target)"
	ln -s ~/.my_alacritty $link_target
else
	echo "softlink from repo to config found"
	echo "(at $link_target)"
fi
