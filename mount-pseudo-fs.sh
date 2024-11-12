#!/bin/bash

input="y"
location=""

echo "Is your mounted filesystem located at '/mnt/gentoo'?"
read -p "> " input

if [[ input == 'y' ]]; then
    mount --types proc /proc /mnt/gentoo/proc
    
    mount --rbind /sys       /mnt/gentoo/sys
    mount --make-rslave      /mnt/gentoo/sys
    
    mount --rbind /dev       /mnt/gentoo/dev
    mount --make-rslave      /mnt/gentoo/dev
    
    mount --bind /run        /mnt/gentoo/run
    mount --make-slave       /mnt/gentoo/run
else
    echo "Please provide your mount location:"
    read -p "> " location

    mount --types proc /proc $location/proc
    
    mount --rbind /sys       $location/sys
    mount --make-rslave      $location/sys
    
    mount --rbind /dev       $location/dev
    mount --make-rslave      $location/dev
    
    mount --bind /run        $location/run
    mount --make-slave       $location/run
fi
