#!/bin/bash

echo "copying exports"
cp ~/.exports ./

echo "copying aliases"
cp ~/.aliases ./

echo "copying functions"
cp ~/.functions ./

echo "copying .zshrc"
cp ~/.zshrc ./

echo "copying .zpreztorc"
cp ~/.zpreztorc ./

echo "pusing to github"
git pull
git add .
git commit -m "updating dotfiles"
git push

echo "Updated ✨"
