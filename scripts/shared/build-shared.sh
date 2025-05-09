#!/bin/bash

set -ouex pipefail

# Repos

rpm --import https://packages.microsoft.com/keys/microsoft.asc

echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/yum.repos.d/vscode.repo

wget https://download.opensuse.org/repositories/home:paul4us/Fedora_Rawhide/home:paul4us.repo -P /etc/yum.repos.d
wget https://download.opensuse.org/repositories/home:Alxhr0/Fedora_41/home:Alxhr0.repo -P /etc/yum.repos.d
dnf5 -y copr enable peterwu/rendezvous
#dnf5 -y copr enable sentry/kernel-blu
#dnf5 -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
#dnf5 -y config-manager addrepo --from-repofile=https://negativo17.org/repos/fedora-steam.repo

#dnf5 -y install --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release

# Codecs
#dnf5 -y install terra-release-extras

#sed -i '10s/enabled=1/enabled=0/' /etc/yum.repos.d/terra-mesa.repo 
#packages=(
#  mesa-name() {
#  mesa-libgbm
#  mesa-libglapi
#  mesa-libEGL
#  mesa-libGL
#  mesa-vulkan-drivers
#  mesa-dri-drivers
#  mesa-filesystem
#  mesa-libgbm
#  mesa-libglapi
#  mesa-libEGL
#  mesa-libGL
#  mesa-vulkan-drivers
#  mesa-dri-drivers
#  mesa-vdpau-drivers
#)

#for pkg in "${packages[@]}"; do
#  dnf5 -y swap --enablerepo="terra-mesa" $pkg $pkg
#done


#rpm-ostree override remove libavdevice-free ffmpeg-free libavcodec-free libavfilter-free libavformat-free libavutil-free libpostproc-free libswresample-free libswscale-free --install ffmpeg
#dnf5 -y install intel-media-driver

# Packages
dnf5 -y install eza bat nebula-manager hourglass bibata-cursor-themes virt-manager aria2 virt-install libvirt-daemon-config-network libvirt-daemon-kvm qemu-kvm virt-viewer libguestfs-tools python3-libguestfs virt-top swtpm edk2-ovmf nvtop nu code

# Steam
#dnf5 -y --setopt=install_weak_deps=False install steam

# Remove Firefox
#dnf5 -y remove firefox firefox-langpacks

# Kernel BLU
#rpm-ostree override replace --experimental --freeze --from repo='copr:copr.fedorainfracloud.org:sentry:kernel-blu' kernel kernel-core kernel-modules kernel-modules-core kernel-modules-extra


systemctl enable podman.socket libvirtd
#systemctl --global enable horizon-theme-manager
