#!/bin/bash

set -ouex pipefail

dnf -y install river alacritty sddm fastfetch htop


systemctl enable sddm NetworkManager bluetooth horizon-flatpak-manager
