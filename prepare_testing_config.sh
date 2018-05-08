#!/bin/bash

# TODO add info dialogs upon operations - copying, modifying, etc.

target_conf_file=~/.config/manjaro-tools/manjaro-tools.conf

# check if user's home config file already exists - and displays info and confirmation for overwriting it -
# then copy system-wide manjaro tools config file into user's home directory for further modifications - 
# user's home config file take precedence over the /etc system's one
if [ -f $(eval echo $target_conf_file) ]; then
    echo 'you have existing manjaro tools configuration in your home directory'
    cp -i /etc/manjaro-tools/manjaro-tools.conf $target_conf_file
else
    cp /etc/manjaro-tools/manjaro-tools.conf $target_conf_file
fi

# use unstable repos
sed -i 's/# target_branch=stable/target_branch=unstable/' $target_conf_file

# change iso label from Manjaro into Netrunner
sed -i 's/# dist_branding="MJRO"/dist_branding="NTRR"/' $target_conf_file
