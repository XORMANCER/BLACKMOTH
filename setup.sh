#!/bin/bash
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi
clear
echo ""
echo "    =================================="
echo "    == BLACKMOTH Dependancy Checker =="
echo "    ==        -Version 1a-          =="
echo "    =================================="
echo ""
echo "[~] Installing needed programs.."
echo ""
sudo apt-get update
sudo apt-get install -y wireless-tools net-tools aircrack-ng grep gawk iw mdk4 aircrack-ng

echo ""
echo "[~] Copying binary files to /usr/bin/"
sudo rm -rf /usr/bin/blackmoth
sudo cp blackmoth /usr/bin/blackmoth
sudo chmod +x /usr/bin/blackmoth

echo ""
echo "[~] Creating dir /usr/share/BLACKMOTH"

if [ ! -d "/usr/share/BLACKMOTH" ]; then
  sudo mkdir /usr/share/BLACKMOTH
fi

echo ""
echo "[!] All Done!"
