#!/bin/bash

# TODO add checking of sed success completion
# https://unix.stackexchange.com/questions/88123/why-sed-does-not-return-exit-status-if-regex-does-not-matched?rq=1

# check if manjaro tools config file exists
if [ -f $(eval echo /etc/manjaro-tools/manjaro-tools.conf) ]; then
    echo "System manjaro tools configuration found"
    source_conf_file=/etc/manjaro-tools/manjaro-tools.conf
    target_conf_file=~/.config/manjaro-tools/manjaro-tools.conf
else
    echo "System manjaro tools configuration not found"
    echo "Exiting..."
    exit 1
fi

# check if user's home config file already exists - and displays info and confirmation for overwriting it -
# then copy system-wide manjaro tools config file into user's home directory for further modifications - 
# user's home config file take precedence over the /etc system's one
if [ -f $(eval echo $target_conf_file) ]; then
    echo "You have existing manjaro tools configuration file in your home directory"
    cp -i $source_conf_file $target_conf_file
else
    echo "Copying system manjaro tools configuration file in your home directory"
    cp $source_conf_file $target_conf_file
fi

echo "Making changes in manjaro tools configuration file in your home directory"

err_prepare_text="Could not make modifications in user's home manjaro tools configuration file\n"

# use unstable repos
sed -i "s|# target_branch=stable|target_branch=unstable|" $target_conf_file || { printf "$err_prepare_text";}

# change iso label from Manjaro into Netrunner
sed -i 's|# dist_branding="MJRO"|dist_branding="NTRW"|' $target_conf_file || { printf "$err_prepare_text";}

# change distribution release to year.month.day.hour format
sed -i 's|# dist_release=.*|dist_release=$(source /etc/lsb-release; echo "${DISTRIB_RELEASE}").$(date +%-d.%-H)|' $target_conf_file || { printf "$err_prepare_text";}

echo 'Done.'
