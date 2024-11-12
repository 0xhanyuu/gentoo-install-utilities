#!/bin/bash

# Ensure you are chrooted into your environment before running this!

emerge --info | grep ^USE >> /etc/portage/make.conf
sed -i -e                    's/^COMMON_FLAGS=.*$/COMMON_FLAGS="-march=native -O2 -pipe"/' /etc/portage/make.conf
echo 'MAKEOPTS="-j10"'    >> /etc/portage/make.conf
echo 'ACCEPT_LICENSE="*"' >> /etc/portage/make.conf
mkdir                        /etc/portage/package.license
nano                         /etc/portage/make.conf
