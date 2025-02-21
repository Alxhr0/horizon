#!/usr/bin/env bash

set -ouex pipefail

# NVIDIA Drivers
dnf5 install -y akmod-nvidia xorg-x11-drv-nvidia-cuda