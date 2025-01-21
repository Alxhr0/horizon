#!/bin/bash

set -ouex pipefail

mkdir -pv ~/.config/autostart

cp /usr/share/horizon/cinnamon/horizon-config.desktop ~/.config/autostart/horizon-config.desktop

dconf -f /org/cinnamon/ < /usr/share/horizon/cinnamon/horizon-dconf

rm ~/.config/autostart/horizon-config.desktop