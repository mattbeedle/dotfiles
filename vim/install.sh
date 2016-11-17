#!/bin/sh

if [ -d ~/vimified ]; then
    cd ~/vimified
    git fetch
else
    cd ~
    git clone git://github.com/zaiste/vimified.git ~/vimified
    ln -sfn vimified/ ~/.vim
    ln -sfn vimified/vimrc ~/.vimrc
    cd vimified

    mkdir bundle
    mkdir -p tmp/backup tmp/swap tmp/undo

    git clone https://github.com/gmarik/vundle.git ~/vimified/bundle/vundle -f
fi

echo "let g:vimified_packages = ['general', 'fancy', 'css', 'js', 'os', 'html', 'coding', 'color', 'ruby']" > local.vimrc

if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

ln -sfn ~/.extra.vimrc ~/vimified/extra.vimrc
ln -sfn ~/.after.vimrc ~/vimified/after.vimrc
ln -sfn ~/.vim/vimrc ~/.vim/init.vim
ln -sfn ~/.vim ~/.config/nvim

sudo apt-get install -y xsel

nvim +BundleInstall +qall
