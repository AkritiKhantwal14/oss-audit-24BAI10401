#!/bin/bash
# Script 1: System Identity Report
# Author: Akriti Khantwal | Course: Open Source Software

# -------- VARIABLES --------
STUDENT_NAME="Akriti Khantwal"
SOFTWARE_CHOICE="Ubuntu Linux"

# -------- SYSTEM INFO --------
KERNEL=$(uname -r)
# Optimized to pull the OS name more reliably
DISTRO=$(grep "PRETTY_NAME" /etc/os-release | cut -d= -f2 | tr -d '"')
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

# -------- DISPLAY --------
echo "==========================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "==========================================="

echo "Operating System : $DISTRO"
echo "Kernel Version   : $KERNEL"
echo "Logged-in User   : $USER_NAME"
echo "Home Directory   : $HOME_DIR"
echo "System Uptime    : $UPTIME"
echo "Current Date/Time: $CURRENT_DATE"

echo "-------------------------------------------"
echo "License Info:"
echo "This system is based on open-source software"
echo "primarily distributed under the GNU General"
echo "Public License (GPL)."
echo "-------------------------------------------"

echo "Thank you for using $SOFTWARE_CHOICE!"
echo "==========================================="
