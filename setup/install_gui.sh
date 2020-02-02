sudo pacman -S i3 rxvt-unicode xdg-utils feh firefox  mpv xorg xf86-video-intel dmenu cbatticon networkmanager network-manager-applet wireguard-arch wireguard-tools

mkdir -p ~/aur

if [ ! -d ~/aur/lxdm-themes ]; then
	cd ~/aur
	git clone https://aur.archlinux.org/lxdm-themes
	cd ~/aur/lxdm-themes
	makepkg -si
fi

if [ ! -d ~/aur/networkmanager-dispatcher-chrony ]; then
	cd ~/aur
	git clone https://aur.archlinux.org/networkmanager-dispatcher-chrony
	cd ~/aur/networkmanager-dispatcher-chrony
	makepkg -si
fi
