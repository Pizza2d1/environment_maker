# SPOTIFY
if [[ ! -d home/$user/environment_maker_downloads ]]; then
    mkdir home/$user/environment_maker_downloads
fi
cd home/$user/environment_maker_downloads
git clone https://extensions.gnome.org/extension/7406/spotify-controls/
cp spotify-controls/ home/$user/.local/share/gnome-shell/extensions/spotify-controls@Sonath21/