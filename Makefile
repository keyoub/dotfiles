.PHONY: bash tmux vim git qute
all: .PHONY

DOTFILES := $(shell pwd)

bash:
	ln -fs ${DOTFILES}/bash/alias ${HOME}/.alias
	ln -fns $(DOTFILES)/etc/ ${HOME}/etc
	ln -fs $(DOTFILES)/bash/bashrc ${HOME}/.bashrc
	ln -fs $(DOTFILES)/bash/bash_profile ${HOME}/.bash_profile
tmux:
	ln -fs $(DOTFILES)/tmux/tmux.conf ${HOME}/.tmux.conf
vim:
	mkdir -p ${HOME}/.vim/pack/plugins/start/
	ln -fs $(DOTFILES)/vim/vimrc ${HOME}/.vimrc
	$(DOTFILES)/vim/setup_plugins.sh $(DOTFILES)/vim/plugins.txt
git:
	ln -fs $(DOTFILES)/git/gitconfig ${HOME}/.gitconfig
	ln -fs $(DOTFILES)/git/gitcommit ${HOME}/.gitcommit
	ln -fs $(DOTFILES)/git/gitignore ${HOME}/.gitignore
