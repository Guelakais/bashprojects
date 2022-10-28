#!/bin/bash
#Standard update script for manjaro
#you need to run 'chmod 744 ./updater.sh' to activate the script
yes|sudo pacman -Syyuu; yes|pacman -Qtdg|sudo pacman -Rns -; yes|sudo pacman -Sc;yes|sudo paru -Syyuu;yes|sudo paru -Sc