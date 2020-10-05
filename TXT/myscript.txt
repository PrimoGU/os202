#!/bin/bash
# Primo Giancarlo Uneputty - 1806205180
# https://github.com/PrimoGU/os202/
# Script to add, commit and push to GitHub Repo.

echo "Enter your commit message"
read message
git status
git pull
git add -A
git commit -m "${message}"
git status
echo "Pushing data to remote server..."
git push