#!/bin/bash

# Ensure you are in /mnt/gentoo before running this, otherwise change the directory to what you need it to be!

tar xpvf stage3-*.tar.xz --xattrs-include='*.*' --numeric-owner -C /mnt/gentoo
