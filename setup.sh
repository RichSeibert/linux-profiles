#!/bin/bash

# warn user that this will overwrite all existing configs
echo -e "\e[31mWarning - This will overwrite existing configuration files \e[0m"
read -p "Do you want to continue? "
echo
if ! [[ $REPLY =~ ^[Yy]$ ]]
then
    exit
fi

# find all files and copy them to ~ keeping path that the file has in configs
for config_dir in configs/*; do
    echo "$config_dir"
    cd $config_dir
    find . -exec cp --parents -r {} ~ \;
    cd ../..
done
