#!/bin/bash

# Ensure you are chrooted into your environment before running this!

mkdir --parents /etc/portage/repos.conf
cp /usr/share/portage/config/repos.conf /etc/portage/repos.conf/gentoo.conf
