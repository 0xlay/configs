#!/bin/bash

system_cache_folder="/var/cache/*"
user_cache_folder="~/.cache/*"
system_log_folder="/var/log/*"
temp_file_folder="/tmp/*"
trash_folder="~/.local/share/Trash/"

sudo rm -rf $system_cache_folder
echo "Clean system cache... Done"

sudo rm -rf $user_cache_folder
echo "Clean user cache... Done"

sudo rm -rf $system_log_folder
echo "Clean system logs... Done"

sudo rm -rf $temp_file_folder
echo "Clean temp files... Done"

sudo rm -rf $trash_folder
echo "Clean trash... Done"

if command -v apt &> /dev/null; then
    sudo apt-get autoremove
    sudo apt-get clean
    echo "Clean apt cache... Done"
elif command -v dnf &> /dev/null; then
    sudo yum autoremove
    sudo yum clean all
    echo "Clean dnf cache... Done"
fi
