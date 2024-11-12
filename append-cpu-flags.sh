#!/bin/bash

# Ensure you are chrooted into your environment before running this!

emerge --ask --oneshot app-portage/cpuid2cpuflags
echo "*/* $(cpuid2cpuflags)" > /etc/portage/package.use/00cpu-flags
