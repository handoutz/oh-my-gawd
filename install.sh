#!/bin/bash

sudo dnf install vim git curl vim-jedi vim-filesystem vim-plugin-powerline vim-omnicppcomplete tmux zsh wget
MYDIR=`pwd`
cd ~

curl https://j.mp/spf13-vim3 -L > spf13-vim.sh 
sh spf13-vim.sh && echo -e "Bundle 'unite.vim'" >> .vimrc.bundles && echo -e "Bundle 'vimproc.vim'" >> .vimrc.local && echo -e "Bundle 'vimfiler.vim'" >> .vimrc.local
rm -f .zshrc
cp $MYDIR/.zshrc .
cp $MYDIR/.tmux.conf .