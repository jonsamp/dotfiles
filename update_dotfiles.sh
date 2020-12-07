#!/bin/bash

echo "copying .config/starship.toml"
cp ~/.config/starship.toml ./.config

echo "copying aliases"
cp ~/.aliases ./

echo "copying exports"
cp ~/.exports ./

echo "copying gitconfig"
cp ~/.gitconfig ./

echo "copying functions"
cp ~/.functions ./

echo "copying .profile"
cp ~/.profile ./

echo "copying .zprofile"
cp ~/.zprofile ./

echo "copying .zshenv"
cp ~/.zshenv ./

echo "copying .zshrc"
cp ~/.zshrc ./

echo "pushing to github"
git pull
git add .
git commit -m "updating dotfiles"
git push

echo "Updated ✨"
