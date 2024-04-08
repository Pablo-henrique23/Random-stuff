#!/bin/bash

# A intenção desse script é trocar o wallpaper e manter a função de slideshow na área de trabalho.
# As mudanças são aplicadas imediatamente pela última linha.

diretorio_imagens="/home/pablo/Imagens/Wallpapers/OneMonitor/"


imagens=("$diretorio_imagens"/*)

imagem_sorteada=${imagens[RANDOM % ${#imagens[@]}]}

caminho_absoluto=$(realpath "$imagem_sorteada")

kwriteconfig5 --file plasma-org.kde.plasma.desktop-appletsrc --group Containments --key Wallpaper "$caminho_absoluto"
qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript 'var allDesktops = desktops();print (allDesktops);for (i=0;i<allDesktops.length;i++) {d = allDesktops[i];d.wallpaperPlugin = "org.kde.slideshow";}'
