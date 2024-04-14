#!/bin/sh

if [ ! -d ~/.config/nvim ]; then
    echo "Nvim config is not available."
    echo "Please install nvim and nvchad first."
    echo "Install neovim with brew: brew install neovim"
    echo "Install nvchad: https://nvchad.com/docs/quickstart/install"
    exit
fi

printf 'Replacing nvim config (~/.config/nvim).\n'
printf 'Are you sure (y/n)?\n'
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then 
    cp -r .configs/nvim ~/.config
else
    exit
fi

