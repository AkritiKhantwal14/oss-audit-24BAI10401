#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Akriti Khantwal | Course: Open Source Software

# -------- VARIABLES --------
PACKAGE="firefox"   # Change this to any package you want to check

# -------- CHECK IF PACKAGE IS INSTALLED --------
if dpkg -l | grep -qw "$PACKAGE"; then
    echo "==========================================="
    echo "$PACKAGE is installed."
    echo "-------------------------------------------"
    # Using -i for case-insensitive matching to be safe
    dpkg -s "$PACKAGE" | grep -Ei 'Version|License|Description'
else
    echo "==========================================="
    echo "$PACKAGE is NOT installed."
fi

# -------- PACKAGE PHILOSOPHY / PURPOSE --------
case $PACKAGE in
    httpd) 
        echo "Apache: the web server that built the open internet" ;;
    mysql) 
        echo "MySQL: open source at the heart of millions of apps" ;;
    firefox) 
        echo "Firefox: privacy-focused open-source web browser" ;;
    vlc) 
        echo "VLC: plays almost any media format freely" ;;
    gimp) 
        echo "GIMP: open-source image editing powerhouse" ;;
    *) 
        echo "This is a useful open-source package." ;;
esac

echo "==========================================="
