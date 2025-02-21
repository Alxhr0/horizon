#!/usr/bin/env bash

set -ouex pipefail


dnf5 -y install akmod-nvidia xorg-x11-drv-nvidia-cuda 
