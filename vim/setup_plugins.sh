#!/bin/bash

pushd ${HOME}/.vim/pack/plugins/start/

# install plugins
while read plugin; do
    git clone $plugin 2>/dev/null
done < $1

# pin vim-go on 1.10 since recent versions break
# go env pickup
pushd ./vim-go
git checkout v1.10 #2>/dev/null
popd

# update any existing ones
for plugin in */; do
    if [ "$plugin" != "vim-go/" ]
    then
        pushd $plugin
        git pull
        popd
    fi
done

popd
