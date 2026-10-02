#!/bin/bash

#==LISTA-DE-PAQUETES/HERRAMIENTAS-MISCELANEOS==#
sudo xbps-install -S nano fastfetch git curl wget htop btop cava tty-clock openjdk21-jre flatpak tailscale papirus-icon-theme zip unzip 7zip dialog

#==LISTA-DE-REPOSITORIOS==#
sudo xbps-install -S void-repo-nonfree
sudo xbps-install -S void-repo-multilib
sudo xbps-install -S void-repo-multilib-nonfree
sudo xbps-install -Syu
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#==LISTA-DE-PAQUETES==#
# Desde XBPS :
sudo xbps-install kitty steam telegram-desktop strawberry obs libresprite kdenlive filezilla virt-manager qemu krita vlc
# Desde Flatpak :
flatpak install discord vscodium obsidian retroarch portproton protonplus Sober gearlever rnote gimp nicotine transmission

# Librerias y Drivers de 32-bits de Steam :
sudo xbps-install -Syu libgcc-32bit libstdc++-32bit libdrm-32bit libglvnd-32bit mesa-dri-32bit mesa-vulkan-intel mesa-vulkan-intel-32bit vulkan-loader-32bit

# Habilita el Servicio de Tailscale :
sudo ln -s /etc/sv/tailscaled/ /var/service/

# Habilita los Servicios de VirtManager :
sudo ln -s /etc/sv/libvirt /var/service/
sudo ln -s /etc/sv/virt* /var/service/

#==INSTALA-COSAS==#
# Instala OpenCode :
curl -fsSL https://opencode.ai/install | bash

# Instala Katifetch
git clone https://github.com/ximimoments/katifetch
cd katifetch/
bash install.sh
cd ..

# Copia mi Configuracion de Bash y la Terminal
sudo cp .bashrc ~/.bashrc
sudo cp -r config/kitty ~/.config

# Instala OhMyBash :
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
