#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

rpm --import https://packages.microsoft.com/keys/microsoft.asc

echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/yum.repos.d/vscode.repo

wget https://download.opensuse.org/repositories/home:paul4us/Fedora_Rawhide/home:paul4us.repo -P /etc/yum.repos.d
wget https://download.opensuse.org/repositories/home:Alxhr0/Fedora_41/home:Alxhr0.repo -P /etc/yum.repos.d

#dnf5 -y copr enable whitehara/kernel-tkg-zen2 
#rpm-ostree override replace --experimental --from repo=copr:copr.fedorainfracloud.org:whitehara:kernel-tkg-zen2 kernel

# this installs a package from fedora repos
dnf install -y virt-manager virt-install libvirt-daemon-config-network libvirt-daemon-kvm qemu-kvm virt-viewer libguestfs-tools python3-libguestfs virt-top swtpm edk2-ovmf nvtop nu code klassy kf6-servicemenus-imagetools

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


# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket libvirtd
