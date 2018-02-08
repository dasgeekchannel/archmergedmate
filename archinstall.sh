#!/bin/bash
set -e
##################################################################################################################
# Author 	: 	Das Geek
# Website 	: 	https://www.dasgeekcommunity.com
# Website	:	https://www.youtube.com/dasgeek

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
# change into your name and email.

#Core Programs

echo "################################################################"
echo "Arch Core Programs Installing"
echo "################################################################"
#update and upgrade
pacman -Syu

#Install software from Pacman repository

sudo pacman -S --noconfirm --needed archey3 baobab bleachbit catfish clementine curl
sudo pacman -S --noconfirm --needed darktable dconf-editor
#sudo pacman -S --noconfirm --needed dmidecode 
sudo pacman -S --noconfirm --needed evince evolution filezilla firefox
sudo pacman -S --noconfirm --needed galculator geary gimp git gksu glances gnome-disk-utility 
#sudo pacman -S --noconfirm --needed gnome-font-viewer gnome-screenshot gnome-system-monitor gnome-terminal gnome-tweak-tool 
sudo pacman -S --noconfirm --needed gparted gpick grsync
sudo pacman -S --noconfirm --needed hardinfo hddtemp hexchat htop 
sudo pacman -S --noconfirm --needed inkscape inxi lm_sensors lsb-release meld mlocate mpv
sudo pacman -S --noconfirm --needed nemo net-tools numlockx openshot pinta plank polkit-gnome 
sudo pacman -S --noconfirm --needed redshift ristretto sane screenfetch scrot shotwell 
sudo pacman -S --noconfirm --needed simple-scan simplescreenrecorder smplayer sysstat 
sudo pacman -S --noconfirm --needed terminator thunar transmission-cli transmission-gtk
sudo pacman -S --noconfirm --needed variety vlc vnstat wget unclutter  

#Install AUR Packages
package="sublime-text-dev"
command="subl3"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi packer &> /dev/null; then

		echo "Installing with packer"
		packer -S --noconfirm --noedit  $package

	elif pacman -Qi pacaur &> /dev/null; then
		
		echo "Installing with pacaur"
		pacaur -S --noconfirm --noedit  $package
		 	
	elif pacman -Qi yaourt &> /dev/null; then

		echo "Installing with yaourt"
		yaourt -S --noconfirm $package
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi



echo "################################################################"
echo "###################   software installed  ################"
echo "################################################################"
