#!/bin/bash

pushd ${HOME}/.vim/pack/plugins/start/

# install plugins
while read plugin; do
    git clone $plugin 2>/dev/null
done < $1

# update any existing ones
for plugin in */; do
    pushd $plugin
    git pull
    popd
done

popd
