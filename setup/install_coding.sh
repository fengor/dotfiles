sudo pacman -S  python python-pip go jq curl cmake npm ripgrep fzf boost boost-libs clang libyaml python-docutils go-tools

mkdir -p ~/aur

if [ ! -d ~/aur/vim-youcompleteme-git ]; then
	cd ~/aur
	git clone https://aur.archlinux.org/vim-youcompleteme-git
	cd vim-youcompleteme-git
	makepkg -si
fi

if [ ! -d ~/aur/universal-ctags-git ]; then 
	cd ~/aur
	git clone https://aur.archlinux.org/universal-ctags-git
	cd universal-ctags-git
	makepkg -si
fi
