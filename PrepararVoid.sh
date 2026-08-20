#!/bin/bash

#==LISTA-DE-PAQUETES/HERRAMIENTAS-MISCELANEOS==#
sudo xbps-install -S fastfetch git curl wget htop btop cava tty-clock openjdk21-jre flatpak tailscale papirus-icon-theme zip unzip 7zip dialog

#==LISTA-DE-REPOSITORIOS==#
sudo xbps-install -S void-repo-nonfree
sudo xbps-install -S void-repo-multilib
sudo xbps-install -S void-repo-multilib-nonfree
sudo xbps-install -Syu
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#==LISTA-DE-PAQUETES==#
# Desde XBPS :
sudo xbps-install kitty steam telegram-desktop strawberry obs libresprite kdenlive filezilla virt-manager qemu audacity lutris
# Desde Flatpak :
flatpak install discord vscodium obsidian retroarch protonplus Sober gearlever

# Librerias y Drivers de 32-bits de Steam :
sudo xbps-install -Syu libgcc-32bit libstdc++-32bit libdrm-32bit libglvnd-32bit mesa-dri-32bit mesa-vulkan-intel mesa-vulkan-intel-32bit vulkan-loader-32bit

# Habilita el Servicio de Tailscale :
sudo ln -s /etc/sv/tailscaled/ /var/service/

# Habilita los Servicios de VirtManager :
sudo ln -s /etc/sv/libvirt /var/service/
sudo ln -s /etc/sv/virt* /var/service/

#==INSTALA-COSAS==#
# Arreglando un Archivo para que Lutris Funcione
sudo echo "antsoftware21 hard nofile 524288" >> /etc/security/limits.conf

# Instala OhMyBash :
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Instala OpenCode :
curl -fsSL https://opencode.ai/install | bash

