#!/bin/bash

set -ouex pipefail


rpm-ostree override remove plasma-workspace-common plasma-breeze-common kde-settings-plasma plasma-activities plasma-activities-stats plasma5support plasma-breeze-qt6 plasma-workspace-geolocation-libs plasma-workspace-geolocation plasma-systemsettings libplasma plasma-discover-libs plasma-integration-qt5 plasma-breeze-qt5 plasma-breeze plasma-integration sddm-wayland-plasma plasma-workspace-libs plasma-browser-integration plasma-discover plasma-nm plasma-desktop plasma-lookandfeel-fedora plasma-workspace plasma-workspace-wayland plasma-print-manager-libs plasma-print-manager plasma-nm-vpnc plasma-nm-openvpn plasma-nm-openconnect plasma-drkonqi plasma-discover-flatpak plasma-discover-notifier kdeplasma-addons plasma-systemmonitor plasma-vault plasma-disks plasma-pa plasma-thunderbolt plasma-milou plasma-workspace-wallpapers plasma-desktop-doc sddm sddm-breeze libkworkspace6 wallpaper-engine-kde-plugin kinfocenter fedora-chromium-config-kde kf5-kconfigwidgets kio-extras powerdevil supergfxctl-plasmoid kwin kde-cli-tools kwin-libs colord-kde sddm-kcm kde-settings-sddm kf5-frameworkintegration-libs kamera kf5-kio-ntlm kf5-kcoreaddons kf5-karchive kf5-kcodecs kf5-syndication kf5-kdoctools kf5-attica kf5-kdnssd kf5-kconfig-core kf5-ki18n kf5-kwidgetsaddons kf5-kconfig-gui kf5-kwindowsystem kf5-kcompletion kf5-kguiaddons kf5-kdbusaddons kf5-kservice kf5-kjobwidgets kf5-solid kf5-sonnet-core kf5-kitemviews kf5-sonnet-ui kf5-sonnet kf5-kwallet kf5-kwallet-libs kf5-kcrash kf5-kactivities kf5-kglobalaccel kf5-kglobalaccel-libs kf5-kactivities-stats kf5-kwayland kf5-kpackage kf5-syntax-highlighting kf5-kirigami2 kf5-knotifications kf5-kauth kf5-kiconthemes kf5-kxmlgui kf5-kbookmarks kf5-qqc2-desktop-style kf5-ktextwidgets kf5-kio-core-libs kf5-kio-doc kf5-kinit kf5-kio-gui kf5-kio-widgets-libs kf5-kio-core kf5-kio-widgets kf5-kio-file-widgets kf5-knewstuff kf5-frameworkintegration kio-extras-kf5 kf5-sonnet-hunspell kde-connect kde-connect-libs kscreenlocker kde-gtk-config kdeconnectd kscreen kwin-common kwin-wayland



dnf -y install cinnamon lightdm slick-greeter xorg-x11-server-Xorg


systemctl enable lightdm

