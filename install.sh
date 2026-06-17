#!/usr/bin/env bash


if [ "$EUID" -ne 0 ]; then
    echo "[-] This script must be run as root (or with sudo/doas)."
    echo "    Try running: sudo $0"
    exit 1
fi

echo "[+] Root privileges confirmed."


if [ -f /etc/os-release ]; then

    source /etc/os-release
    echo "[+] Detected Distro: $NAME ($VERSION_ID)"
else
    echo "[-] /etc/os-release not found. Cannot determine distribution automatically."
fi
