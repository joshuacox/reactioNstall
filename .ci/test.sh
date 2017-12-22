#!/bin/bash -l
PATH=~/.meteor:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

cd $HOME
ls -lh .meteor
which reaction
which meteor
if [ ! -d "$HOME/reaction/.git" ]; then
  mv reaction reaction-`date -I`
  reaction init
else
  ls -lh $HOME/reaction
fi
cd $HOME/reaction
reaction pull
reaction --version
