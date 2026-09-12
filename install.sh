#!/bin/bash
# Bisshoy Anwar
# Rune Emacs Install Script Version 0.1

EMACSDIR=".emacs.d"

echo "Hello, and welcome to the Rune Emacs Installer!"

# Check for extant ~/.emacs.d, and create one if none exists 
# If one does already exist, then create backup and wipe the
# currently existing one 
if [ -d ~/$EMACSDIR ]; then
    echo "~/$EMACSDIR exists; creating a backup and cleaning... "
    cp -R ~/$EMACSDIR ~/$EMACSDIR.backup/
    rm -rf ~/$EMACSDIR/*
    echo "The contents of your old $EMACSDIR can be found at ~/$EMACSDIR.backup"
else
    echo "No ~/$EMACSDIR exists; creating now..."
    mkdir ~/$EMACSDIR/
    echo "~/$EMACSDIR created!"
fi

# Change into the ~/.emacs.d directory 
cd ~/$EMACSDIR

# Clone GitHub repo into ~/.emacs.d directory 
echo "----------------------------------------------------"
git clone https://github.com/voidarcher/RuneMacs.git ~/$EMACSDIR/
echo "----------------------------------------------------"

# Cleanup
echo "Cleaning up ~/$EMACSDIR..."
rm -rf ./.git install.sh LICENSE README.md TODO 
echo "All done!"

# Welcome message 
echo ""
echo "Welcome to..."
echo "************************************************************"
echo "  ____  _   _ _   _ _____   _____ __  __    _    ____ ____  "
echo " |  _ \| | | | \ | | ____| | ____|  \/  |  / \  / ___/ ___| "
echo " | |_) | | | |  \| |  _|   |  _| | |\/| | / _ \| |   \___ \ "
echo " |  _ <| |_| | |\  | |___  | |___| |  | |/ ___ \ |___ ___) |"
echo " |_| \_\____/|_| \_|_____| |_____|_|  |_/_/   \_\____|____/ "
echo "                                                            "
echo "************************************************************"
echo "Now, please open Emacs and allow the syncing to occur!"

cd
