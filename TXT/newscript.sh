#!/bin/bash
# Primo Giancarlo Uneputty - 1806205180
# https://github.com/PrimoGU/os202/
# Script to add, commit and push to GitHub Repo.

echo "Enter your commit message"
read message
git add -A
git commit -m "${message}"
if [ -n "$(git status - porcelain)" ];
then
	echo "It is clean, nothing to commit..."
else
	git pull
	git status
	echo "Pushing data to remote server..."
	git push
fi