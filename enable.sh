rm -f ~/.bashrc
ln -s bash/bashrc ~/.bashrc

rm -rf ~/.i3 
ln -s i3 ~/.i3

rm -f ~/.i3status.conf
ln -s i3status.conf ~/.i3status.conf

rm -rf ~/.vim
ln -s vim ~/.vim
rm -f ~/.vimrc
ln -s vim/essential.vim ~/.vimrc

rm -rf ~/.mutt
ln -s mutt ~/.mutt
rm -f ~/.msmtprc
ln -s msmtp/msmtprc ~/.msmtprc

rm ~/.Xresources
ln -s Xresources ~/.Xresources
