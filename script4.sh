#!/bin/bash
# Script 4: Log File Analyzer
# Author: Akriti Khantwal | Course: Open Source Software
# Usage: ./log_analyzer.sh /var/log/syslog [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error'

# -------- CHECK FILE EXISTS --------
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    echo "Usage: $0 [path_to_log] [keyword]"
    exit 1
fi

# -------- RETRY IF FILE IS EMPTY --------
while [ ! -s "$LOGFILE" ]; do
    echo "File $LOGFILE is empty. Waiting 5 seconds..."
    sleep 5
done

# -------- COUNT KEYWORDS --------
# Using grep -c is much faster than a manual loop for large logs
COUNT=$(grep -ic "$KEYWORD" "$LOGFILE")

# -------- PRINT SUMMARY --------
echo "==========================================="
echo "Log File Analysis — $LOGFILE"
echo "Author: Akriti Khantwal"
echo "-------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times."
echo "Last 5 matching lines:"
echo "-------------------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "==========================================="
