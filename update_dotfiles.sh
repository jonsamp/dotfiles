#!/bin/bash

echo "copying .config/starship.toml"
cp ~/.config/starship.toml ./.config

echo "copying aliases"
cp ~/.aliases ./

echo "copying exports"
cp ~/.exports ./

echo "copying functions"
cp ~/.functions ./

echo "copying .zlogin"
cp ~/.zlogin ./

echo "copying .zlogout"
cp ~/.zlogout ./

echo "copying .zprofile"
cp ~/.zprofile ./

echo "copying .zshenv"
cp ~/.zshenv ./

echo "copying .zshrc"
cp ~/.zshrc ./

echo "copying os-setup-script.sh"
cp ~/os-setup-script.sh ./

echo "pushing to github"
git pull
git add .
git commit -m "updating dotfiles"
git push

echo "Updated ✨"
