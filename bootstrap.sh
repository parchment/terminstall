#!/bin/zsh

cd "$(dirname ${(%):-%N})";

function syncIt() {
	rsync -avh common.zsh-theme $ZSH/custom/themes/
	rsync -v --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "brew.sh" \
		--exclude "LICENSE" \
		--exclude "README.md" \
		--exclude "common.zsh-theme" \
		-avh --no-perms . ~;
	source ~/.zshrc;
}

read "?This may overwrite existing files in your home directory. Are you sure? (y/n) ";
if [[ $REPLY =~ ^[Yy]$ ]]; then
	syncIt;
fi;

unset syncIt;
cd $HOME;
