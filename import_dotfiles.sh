#!/bin/bash

git pull

echo "importing .config/starship.toml"
cp ./.config/starship.toml ~/.config/starship.toml

echo "importing .aliases"
cp ./.aliases ~/.aliases

echo "importing .exports"
cp ./.exports ~/.exports

echo "importing .functions"
cp ./.functions ~/.functions

echo "importing .zlogin"
cp ./.zlogin ~/.zlogin

echo "importing .zlogout"
cp ./.zlogout ~/.zlogout

echo "importing .zprofile"
cp ./.zprofile ~/.zprofile

echo "importing .zshenv"
cp ./.zshenv ~/.zshenv

echo "importing .zshrc"
cp ./.zshrc ~/.zshrc

echo "Imported ✨"