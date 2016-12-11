rm -f ~/.bashrc
ln -s ~/dotfiles/bash/bashrc ~/.bashrc

rm -rf ~/.i3 
ln -s ~/dotfiles/i3 ~/.i3

rm -f ~/.i3status.conf
ln -s ~/dotfiles/i3status.conf ~/.i3status.conf

rm -rf ~/.vim
ln -s ~/dotfiles/vim ~/.vim
rm -f ~/.vimrc
ln -s ~/dotfiles/vim/essential.vim ~/.vimrc

rm -rf ~/.mutt
ln -s ~/dotfiles/mutt ~/.mutt
rm -f ~/.msmtprc
ln -s ~/dotfiles/msmtp/msmtprc ~/.msmtprc

rm ~/.Xresources
ln -s ~/dotfiles/Xresources ~/.Xresources
