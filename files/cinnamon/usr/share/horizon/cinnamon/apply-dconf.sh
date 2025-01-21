#!/bin/bash

set -ouex pipefail

mkdir -pv ~/.config/autostart

dconf load -f /org/cinnamon/ < /usr/share/horizon/cinnamon/horizon-dconf

rm ~/.config/autostart/horizon-config.desktop