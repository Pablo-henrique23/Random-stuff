#!/bin/bash

# Altera o papel de parede para outro --> Wallpaper fixo! Apresentação de slides não funciona!

diretorio="/home/pablo/Imagens/Wallpapers/OneMonitor"

imagens=("$diretorio"/*)
sorteada=${imagens[RANDOM % ${#imagens[@]}]}

/usr/bin/plasma-apply-wallpaperimage "$sorteada"
