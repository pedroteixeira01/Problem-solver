#!/bin/bash

sudo apt clean &&
sudo apt update -m && 
sudo dpkg --configure -a && 
sudo apt install -f && 
sudo apt full-upgrade && 
flatpak update &&
flatpak update --appstream && 
flatpak repair --user && 
sudo flatpak repair --system && 
flatpak update && 
flatpak uninstall --unused

echo
echo "Done!"