# oss-audit-24BAI10401
# Open Source Software Audit & Scripting
**Author:** Akriti Khantwal  
**Course:** Open Source Software  

This repository contains a collection of Bash scripts designed to audit system identity, inspect FOSS packages, analyze logs, and generate an open-source manifesto.

## Script Overview
1.  **System Identity Report:** Displays kernel version, distro info, and system uptime.
2.  **FOSS Package Inspector:** Checks if specific packages (like Firefox) are installed and retrieves metadata.
3.  **Disk & Permission Auditor:** Audits permissions and sizes of key system directories.
4.  **Log File Analyzer:** Searches system logs for specific keywords (default: 'error').
5.  **Manifesto Generator:** An interactive script to generate a personal open-source philosophy file.

## How to Run
Ensure the scripts have execution permissions:
```bash
chmod +x *.sh
./script_name.sh
