#!/bin/bash -l

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
reaction --version
