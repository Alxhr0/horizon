#!/bin/bash

set -ouex pipefail

dconf load -f /org/cinnamon/ < /usr/share/horizon/cinnamon/horizon-dconf

pkexec rm /etc/xdg/autostart/horizon-config.desktop