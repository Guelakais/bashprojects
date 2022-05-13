#!/bin/bash
#Standard update script for manjaro
#you need to run 'chmod 744 ./updater.sh' to activate the script
sudo pacman -Syyuu; pacman -Qtdg|sudo pacman -Rns -; sudo pacman -Sc; 
pamac upgrade -a; pamac clean; 