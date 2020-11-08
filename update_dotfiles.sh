#!/bin/bash

echo "copying aliases"
cp ~/.config/starship.toml ./.config

echo "copying aliases"
cp ~/.aliases ./

echo "copying exports"
cp ~/.exports ./

echo "copying functions"
cp ~/.functions ./

echo "copying .zpreztorc"
cp ~/.zlogin ./

echo "copying .zpreztorc"
cp ~/.zlogout ./

echo "copying .zpreztorc"
cp ~/.zpreztorc ./

echo "copying .zpreztorc"
cp ~/.zprofile ./

echo "copying .zpreztorc"
cp ~/.zshenv ./

echo "copying .zshrc"
cp ~/.zshrc ./

echo "pusing to github"
git pull
git add .
git commit -m "updating dotfiles"
git push

echo "Updated ✨"
