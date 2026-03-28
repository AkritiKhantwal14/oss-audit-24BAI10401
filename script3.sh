#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Akriti Khantwal | Course: Open Source Software

# -------- VARIABLES --------
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
SOFTWARE="firefox"
SOFTWARE_CONF="/etc/firefox"

# -------- HEADER --------
echo "==========================================="
echo "   Directory Audit Report — Akriti Khantwal"
echo "==========================================="

# -------- LOOP THROUGH SYSTEM DIRECTORIES --------
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extracts permissions, owner, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Calculates size while suppressing errors for unreadable sub-files
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# -------- CHECK SOFTWARE CONFIG DIRECTORY --------
echo "-------------------------------------------"
if [ -d "$SOFTWARE_CONF" ]; then
    PERMS=$(ls -ld "$SOFTWARE_CONF" | awk '{print $1, $3, $4}')
    echo "$SOFTWARE configuration directory exists: $SOFTWARE_CONF"
    echo "Permissions: $PERMS"
else
    echo "$SOFTWARE configuration directory does NOT exist: $SOFTWARE_CONF"
fi
echo "==========================================="
