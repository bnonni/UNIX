#!/bin/bash
sudo ln scripts/* ./bin
cp ~/.profile ~/.profile.bak
cp ./.profile ~/.profile
source ~/.profile
echo "Install complete!"