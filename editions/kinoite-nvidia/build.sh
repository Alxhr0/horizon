#!/bin/bash

set -ouex pipefail

wget https://download.opensuse.org/repositories/home:paul4us/Fedora_Rawhide/home:paul4us.repo -P /etc/yum.repos.d
wget https://download.opensuse.org/repositories/home:Alxhr0/Fedora_41/home:Alxhr0.repo -P /etc/yum.repos.d


#dnf5 -y copr enable whitehara/kernel-tkg-zen2 
#rpm-ostree override replace --experimental --from repo=copr:copr.fedorainfracloud.org:whitehara:kernel-tkg-zen2 kernel

# this installs a package from fedora repos
dnf install -y kf6-servicemenus-imagetools konsole akmod-nvidia xorg-x11-drv-nvidia-cuda

# Remove unused packages
dnf remove -y krfb krfb-libs
