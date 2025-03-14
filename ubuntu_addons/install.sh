#!/bin/bash
# This will prompt you to install all the current extensions that I have on my ubuntu laptop

user=whoami # So that the downloads can be consilidated to the user rather than root

# DESKTOP CUBE
read -p "Do you want to download the \"Desktop Cube\" extension? [Y/n]" uinput
if [[ -z $uinput ]] || [[ $uinput == "y" ]] || [[ $uinput == "Y" ]]; then
    mkdir home/$user/environment_maker_downloads
    cd home/$user/environment_maker_downloads
    git clone https://github.com/Schneegans/Desktop-Cube.git
    cd Desktop-Cube
    make install
    gnome-extensions enable desktop-cube@schneegans.github.com
fi

# LOCK SCREEN UNBLANK
read -p "Do you want to download the \"Unblank Lock Ccreen\" extension? [Y/n]" uinput
if [[ -z $uinput ]] || [[ $uinput == "y" ]] || [[ $uinput == "Y" ]]; then
    if [[ ! -d home/$user/environment_maker_downloads ]]; then
        mkdir home/$user/environment_maker_downloads
    fi
    cd home/$user/environment_maker_downloads
    git clone https://github.com/sunwxg/gnome-shell-extension-unblank.git
    cd gnome-shell-extension-unblank
    make install
fi

# SPOTIFY
read -p "Do you want to download the \"Spotify Widget\" extension? [Y/n]" uinput
if [[ -z $uinput ]] || [[ $uinput == "y" ]] || [[ $uinput == "Y" ]]; then
    if [[ ! -d home/$user/environment_maker_downloads ]]; then
        mkdir home/$user/environment_maker_downloads
    fi
    cd home/$user/environment_maker_downloads
    git clone https://extensions.gnome.org/extension/7406/spotify-controls/
    cp spotify-controls/ spotify-controls@Sonath21/
fi

# SPOTIFY
read -p "Do you want to download the \"Spotify Widget\" extension? [Y/n]" uinput
if [[ -z $uinput ]] || [[ $uinput == "y" ]] || [[ $uinput == "Y" ]]; then
    if [[ ! -d home/$user/environment_maker_downloads ]]; then
        mkdir home/$user/environment_maker_downloads
    fi
    cd home/$user/environment_maker_downloads
    git clone https://extensions.gnome.org/extension/7406/spotify-controls/
    cp spotify-controls/ spotify-controls@Sonath21/
fi









# read -p "Do you want to download the \"Desktop Cube\" extension? [Y/n]" uinput

# if [[ -z $uinput ]] || [[ $uinput == "y" ]] || [[ $uinput == "Y" ]]; then
#     mkdir home/$user/environment_maker_downloads
#     cd home/$user/environment_maker_downloads

# fi