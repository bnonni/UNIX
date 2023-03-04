#!/bin/bash
sudo ln scripts/* .
cp ~/.profile ~/.profile.bak
cp ./.profile ~/.profile
source ~/.profile
echo "Install complete!"