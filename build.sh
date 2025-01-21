#!/bin/bash

set -ouex pipefail

wget https://download.opensuse.org/repositories/home:paul4us/Fedora_Rawhide/home:paul4us.repo -P /etc/yum.repos.d
wget https://download.opensuse.org/repositories/home:Alxhr0/Fedora_41/home:Alxhr0.repo -P /etc/yum.repos.d

#dnf5 -y copr enable whitehara/kernel-tkg-zen2 
#rpm-ostree override replace --experimental --from repo=copr:copr.fedorainfracloud.org:whitehara:kernel-tkg-zen2 kernel

# this installs a package from fedora repos
dnf install -y klassy kf6-servicemenus-imagetools

# Dependencies for XAMPP
dnf install -y libnsl

# Remove unused packages
dnf remove -y krfb krfb-libs

# Install XAMPP
#echo "Installing XAMPP..."

#wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.2.12/xampp-linux-x64-8.2.12-0-installer.run
#chmod +x xampp-linux-x64-8.2.12-0-installer.run
#./xampp-linux-x64-8.2.12-0-installer.run --mode unattended --unattendedmodeui minimal --debuglevel 4
#rm xampp-linux-x64-8.2.12-0-installer.run 

