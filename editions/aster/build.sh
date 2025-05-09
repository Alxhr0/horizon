#!/usr/bin/env bash

set -ouex pipefail

wget https://download.opensuse.org/repositories/home:paul4us/Fedora_Rawhide/home:paul4us.repo -P /etc/yum.repos.d
wget https://download.opensuse.org/repositories/home:Alxhr0/Fedora_41/home:Alxhr0.repo -P /etc/yum.repos.d

# Install packages
dnf5 install -y kf6-servicemenus-imagetools

# Remove unused packages
dnf5 remove -y krfb krfb-libs
