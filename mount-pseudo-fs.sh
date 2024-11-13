#!/bin/bash

# Feel free to change this directory if needed.
location='/mnt/gentoo'

mount --types proc /proc $location/proc -v
    
mount --rbind /sys       $location/sys -v
mount --make-rslave      $location/sys -v
    
mount --rbind /dev       $location/dev -v
mount --make-rslave      $location/dev -v
    
mount --bind /run        $location/run -v
mount --make-slave       $location/run -v
