#!/bin/bash -l
printenv
PATH=~/.meteor:$PATH
which meteor
npm -v
which npm
echo -n 'node version: '
node -v
which node
nvm ls
nvm use --lts lts/carbon
echo PATH is $PATH
