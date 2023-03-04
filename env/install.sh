#!/bin/bash
sudo ln scripts/* ./bin
if [ -e ~/.profile ]; then
  cp ~/.profile ~/.profile.bak
fi
cp ./.profile ~/.profile
source ~/.profile
echo "Install complete!"