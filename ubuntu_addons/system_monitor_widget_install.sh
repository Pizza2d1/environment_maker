# SYSTEM MONITOR WIDGET 
if [[ ! -d home/$user/environment_maker_downloads ]]; then
    mkdir home/$user/environment_maker_downloads
fi
cd home/$user/environment_maker_downloads
echo "Installing additional dependancies"
sudo apt install gir1.2-gtop-2.0 gir1.2-nm-1.0 gir1.2-clutter-1.0 gnome-system-monitor
if [ $? -ne 0 ]; then
    echo "Some packages failed to download, you may need to download updated versions manually, packages: [gir1.2-gtop-2.0, gir1.2-nm-1.0, gir1.2-clutter-1.0, gnome-system-monitor]"
else
    echo "Complete"
fi
git clone https://github.com/paradoxxxzero/gnome-shell-system-monitor-applet.git
cd gnome-shell-system-monitor-applet
make install
echo "\033[0m\e[92mComplete!\033[0m"