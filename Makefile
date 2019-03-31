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
git:
	ln -fs $(DOTFILES)/git/gitconfig ${HOME}/.gitconfig
	ln -fs $(DOTFILES)/git/gitcommit ${HOME}/.gitcommit
qute:
ifeq (${OS},OSX)
	mkdir -p ${HOME}/.qutebrowser
	ln -fs $(DOTFILES)/qute/config.py ${HOME}/.qutebrowser/config.py
else
	mkdir -p ${HOME}/.config/qutebrowser
	ln -fs $(DOTFILES)/qute/config.py ${HOME}/.config/qutebrowser/config.py
endif
