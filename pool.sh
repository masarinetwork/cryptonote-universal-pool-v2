#!/usr/bin/env bash
git clone https://github.com/mynt-project/cryptonote-universal-pool-v2 cnpool 
cd cnpool 
git pull origin master
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
echo 'Adding NVM to the Path, (tested on ubuntu 16.04, otherwise just restart)'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "NVM_DIR/bash_completion"
echo 'DONE, NVM is ready for action'
nvm install 0.10.48
nvm use 0.10.48 && npm update && npm install
echo 'DONE, now start up the pool.'

