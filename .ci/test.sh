#!/bin/bash -l
cd $HOME
if [ ! -d "$HOME/reaction" ]; then
  reaction init
fi
cd $HOME/reaction
reaction --version
