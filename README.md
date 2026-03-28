Open Source Audit Scripts

Student Name: Akriti Khantwal

Roll Number: 24BAI10401

Chosen Software: Linux (Open Source Web Browser)

Project Overview

This repository contains five shell scripts designed to explore Linux systems, audit open-source software, analyze logs, and create personalized outputs. The scripts demonstrate key Linux shell concepts including variables, loops, conditional statements, user input, and file management. All scripts are intended to run in a Linux environment (native Linux or WSL on Windows).

Scripts Description & Usage

1. System Identity Report (script1.sh)

Description:
Generates a system welcome screen with OS distribution, kernel version, logged-in user, home directory, uptime, current date/time, and license information.

Dependencies:

uname, uptime, whoami, date

Step-by-step to run:

cd ~/your_scripts_folder

chmod +x script1.sh

./script1.sh

2. FOSS Package Inspector (script2.sh)

Description:
Checks if a specified package (like Firefox) is installed, prints version/license info, and provides a brief description of the package’s purpose.

Dependencies:

dpkg, grep

Step-by-step to run:

cd ~/your_scripts_folder

chmod +x script2.sh

./script2.sh

Optional: Change the package inside the script by editing the PACKAGE variable.

3. Disk and Permission Auditor (script3.sh)

Description:
Audits important system directories to display permissions, owner, and disk usage. Optionally checks software config directories.

Dependencies:

ls, du, awk, cut

Step-by-step to run:

cd ~/your_scripts_folder

chmod +x script3.sh

./script3.sh

4. Log File Analyzer (script4.sh)

Description:
Counts occurrences of a keyword (default = error) in a log file and prints a summary. Also prints last 5 matching lines.

Dependencies:

grep, tail

Step-by-step to run:

cd ~/your_scripts_folder

chmod +x script4.sh

./script4.sh /var/log/syslog error

5. Open Source Manifesto Generator (script5.sh)

Description:
Asks the user three questions interactively and generates a personalized open-source philosophy paragraph. Saves output to manifesto_<username>.txt.

Dependencies:

read, date, cat

Step-by-step to run:

cd ~/your_scripts_folder

chmod +x script5.sh

./script5.sh

General Notes

Linux Environment: Scripts are tested on Ubuntu 20.04 via WSL and native Linux. For Windows users, copy scripts to /home/<username> for proper permissions.

Executable Permission: Always run chmod +x <script>.sh before execution.

Dependencies: Most scripts use standard Linux commands (dpkg, grep, awk, ls, du, tail) that are available in most distributions.

