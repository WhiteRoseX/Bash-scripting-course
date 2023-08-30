#!/bin/bash

release_file=/etc/os-release 

if grep -q "Arch" $release_file
then
	sudo pacman -Syu
fi

if grep -q "Pop" $release_file
then
	sudo apt update
	sudo apt dist-update
fi
if grep -q "Kali GNU/Linux" $release_file
then
	sudo apt update -y
	sudo apt upgrade -y
fi

