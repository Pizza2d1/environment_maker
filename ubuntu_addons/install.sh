#!/bin/bash
# This will prompt you to install all the current extensions that I have on my ubuntu laptop

user=$(whoami) # So that the downloads can be consilidated to the user rather than root

# DESKTOP CUBE
if [[ $1 == "-y" ]]; then
    uinput="y"
else
    read -p "Do you want to download the \"Desktop Cube\" extension? [Y/n]" uinput
fi
if [[ -z $uinput ]] || [[ $uinput == "y" ]] || [[ $uinput == "Y" ]]; then
    mkdir /home/$user/environment_maker_downloads
    cd /home/$user/environment_maker_downloads
    git clone https://github.com/Schneegans/Desktop-Cube.git
    cd Desktop-Cube
    make install
    gnome-extensions enable desktop-cube@schneegans.github.com
    echo "\033[0m\e[92mComplete!\033[0m"
fi

# LOCK SCREEN UNBLANK
if [[ $1 == "-y" ]]; then
    uinput="y"
else
    read -p "Do you want to download the \"Unblank Lock Ccreen\" extension? [Y/n]" uinput
fi
if [[ -z $uinput ]] || [[ $uinput == "y" ]] || [[ $uinput == "Y" ]]; then
    mkdir /home/$user/environment_maker_downloads
    cd /home/$user/environment_maker_downloads
    git clone https://github.com/sunwxg/gnome-shell-extension-unblank.git
    cd gnome-shell-extension-unblank
    make install
    echo "\033[0m\e[92mComplete!\033[0m"
fi

# SPOTIFY
if [[ $1 == "-y" ]]; then
    uinput="y"
else
    read -p "Do you want to download the \"Spotify Widget\" extension? [Y/n]" uinput
fi
if [[ -z $uinput ]] || [[ $uinput == "y" ]] || [[ $uinput == "Y" ]]; then
    mkdir /home/$user/environment_maker_downloads
    cd /home/$user/environment_maker_downloads
    git clone https://extensions.gnome.org/extension/7406/spotify-controls/
    cp spotify-controls/ /home/$user/.local/share/gnome-shell/extensions/spotify-controls@Sonath21/
    echo "\033[0m\e[92mComplete!\033[0m"
fi

# SYSTEM MONITOR WIDGET 
if [[ $1 == "-y" ]]; then
    uinput="y"
else
    read -p "Do you want to download the \"System Monitor Widget\" extension? [Y/n]" uinput
fi
if [[ -z $uinput ]] || [[ $uinput == "y" ]] || [[ $uinput == "Y" ]]; then
    mkdir /home/$user/environment_maker_downloads
    cd /home/$user/environment_maker_downloads
    echo "Installing additional dependancies"
    sudo apt install gir1.2-gtop-2.0 gir1.2-nm-1.0 gir1.2-clutter-1.0 gnome-system-monitor -y
    if [ $? -ne 0 ]; then
        echo "Some packages failed to download, you may need to download updated versions manually, packages: [gir1.2-gtop-2.0, gir1.2-nm-1.0, gir1.2-clutter-1.0, gnome-system-monitor]"
    else
        echo "Complete"
    fi
    git clone https://github.com/paradoxxxzero/gnome-shell-system-monitor-applet.git
    cd gnome-shell-system-monitor-applet
    make install
    echo "\033[0m\e[92mComplete!\033[0m"
fi

# BATTERY CHARGE LIMITER 
if [[ $1 == "-y" ]]; then
    uinput="y"
else
    read -p "Do you want to download the \"Battery Charge Limitere\" extension? [Y/n]" uinput
fi
if [[ -z $uinput ]] || [[ $uinput == "y" ]] || [[ $uinput == "Y" ]]; then
    mkdir /home/$user/environment_maker_downloads
    cd /home/$user/environment_maker_downloads
    echo "Installing additional dependancies"
    sudo apt install gettext -y 
    if [ $? -ne 0 ]; then
        echo "Some packages failed to download, you may need to download updated versions manually, packages: [gettext]"
    else
        echo "Complete"
    fi
    git clone https://github.com/maniacx/Battery-Health-Charging.git
    cd Battery-Health-Charging 
    make install   
    echo "\033[0m\e[92mComplete!\033[0m"
fi



# # SPOTIFY
# read -p "Do you want to download the \"Spotify Widget\" extension? [Y/n]" uinput
# if [[ -z $uinput ]] || [[ $uinput == "y" ]] || [[ $uinput == "Y" ]]; then
#     if [[ ! -d /home/$user/environment_maker_downloads ]]; then
#         mkdir /home/$user/environment_maker_downloads
#     fi
#     cd /home/$user/environment_maker_downloads
#     git clone https://extensions.gnome.org/extension/7406/spotify-controls/
#     cp spotify-controls/ spotify-controls@Sonath21/
#     echo "\033[0m\e[92mComplete!\033[0m"
# fi







# read -p "Do you want to download the \"Desktop Cube\" extension? [Y/n]" uinput

# if [[ -z $uinput ]] || [[ $uinput == "y" ]] || [[ $uinput == "Y" ]]; then
#     mkdir /home/$user/environment_maker_downloads
#     cd /home/$user/environment_maker_downloads

# fi