#!/usr/bin/env bash

# eheck system kernel and bits
uname -a
getconf LONG_BIT

# download kernel
# http://kernel.ubuntu.com/~kernel-ppa/mainline/
sudo wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.10.2/linux-image-4.10.2-041002-generic_4.10.2-041002.201703120131_amd64.deb

# install kernel
sudo dpkg -i linux-image-4.10.2-041002-generic_4.10.2-041002.201703120131_amd64.deb

# update grub 
sudo update-grub

# reboot your machine
sudo reboot
