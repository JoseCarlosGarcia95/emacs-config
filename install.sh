#!/bin/bash
echo "Installing latest emacs configuration"
echo "Deleting current .emacs.d folder!"
rm -rf ~/.emacs.d/
mkdir -p ~/.emacs.d
echo "Copying latest_build to init.el"
cp latest_build ~/.emacs.d/init.el
