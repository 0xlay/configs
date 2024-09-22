#!/bin/bash

system_cache_folder="/Library/Caches/*"
user_cache_folder="~/Library/Caches/*"
system_log_folder="/Library/Logs/*"
user_log_folder="~/Library/Logs/*"
system_temp_file_folder="/private/var/folders/*"
temp_file_folder="/private/var/tmp/*"
trash_folder="~/.Trash/*"

sudo rm -rf $system_cache_folder
echo "Clean system cache... Done"

sudo rm -rf $user_cache_folder
echo "Clean user cache... Done"

sudo rm -rf $system_log_folder
echo "Clean system logs... Done"

sudo rm -rf $user_log_folder
echo "Clean user logs... Done"

sudo rm -rf $system_temp_file_folder
echo "Clean system temp files... Done"

sudo rm -rf $temp_file_folder
echo "Clean temp files... Done"

sudo rm -rf $trash_folder
echo "Clean trash... Done"

if [[ "$OSTYPE" == "darwin"* ]]; then
  brew cleanup
fi
