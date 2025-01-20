
# Fix Vesktop flatpak RPC
fix-vesktop-flatpak-rpc:
    mkdir -p ~/.config/user-tmpfiles.d
    echo 'L %t/discord-ipc-0 - - - - .flatpak/dev.vencord.Vesktop/xdg-run/discord-ipc-0' > ~/.config/user-tmpfiles.d/discord-rpc.conf
    systemctl --user enable --now systemd-tmpfiles-setup.service
    
    ln -s /run/user/1000/.flatpak/dev.vencord.Vesktop/xdg-run/discord-ipc-0 /run/user/1000/discord-ipc-0

    @echo -e "\033[34mNeed to use sudo...\033[0m"
    sudo flatpak override --filesystem=xdg-run/discord-ipc-*
    sudo flatpak override --filesystem=xdg-run/.flatpak/dev.vencord.Vesktop:create

    @echo -e "\033[34mAdding the fix to autostart...\033[0m"
    mkdir -pv ~/.config/autostart

    echo -e "[Desktop Entry]\nCategories=Utility;\nComment=Symlink for Vesktop discord RPC\nIcon=vesktop\nName=VesktopRPC\nStartupNotify=true\nTerminal=false\nType=Application\nExec=ln -s /run/user/1000/.flatpak/dev.vencord.Vesktop/xdg-run/discord-ipc-0 /run/user/1000/discord-ipc-0" >> ~/.config/autostart/vesktop-rpc.desktop

# Fix Discord flatpak RPC
fix-discord-flatpak-rpc:
    mkdir -p ~/.config/user-tmpfiles.d
    echo 'L %t/discord-ipc-0 - - - - app/com.discordapp.Discord/discord-ipc-0' > ~/.config/user-tmpfiles.d/discord-rpc.conf
    systemctl --user enable --now systemd-tmpfiles-setup.service

    ln -s /run/user/1000/.flatpak/com.discordapp.Discord/xdg-run/discord-ipc-0 /run/user/1000/discord-ipc-0

    @echo -e "\033[34mNeed to use sudo...\033[0m"
    sudo flatpak override --filesystem=xdg-run/discord-ipc-*
    sudo flatpak override --filesystem=xdg-run/.flatpak/com.discordapp.Discord:create

    @echo -e "\033[34mAdding the fix to autostart...\033[0m"
    mkdir -pv ~/.config/autostart

    echo -e "[Desktop Entry]\nCategories=Utility;\nComment=Symlink for Discord RPC\nIcon=discord\nName=DiscordRPC\nStartupNotify=true\nTerminal=false\nType=Application\nExec=ln -s /run/user/1000/.flatpak/com.discordapp.Discord/xdg-run/discord-ipc-0 /run/user/1000/discord-ipc-0" >> ~/.config/autostart/discord-rpc.desktop

# Install Nix using the DeterminateSystems nix-installer
install-nix:
    curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | \
        sh -s -- install