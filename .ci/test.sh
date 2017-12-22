#!/bin/bash -l
source ~/.profile

cd $HOME
ls -lh .meteor
which reaction
which meteor
if [ ! -d "$HOME/reaction" ]; then
  reaction init
fi
cd $HOME/reaction
reaction --version
