# LOCK SCREEN UNBLANK
if [[ ! -d home/$user/environment_maker_downloads ]]; then
    mkdir home/$user/environment_maker_downloads
fi
cd home/$user/environment_maker_downloads
git clone https://github.com/sunwxg/gnome-shell-extension-unblank.git
cd gnome-shell-extension-unblank
make install