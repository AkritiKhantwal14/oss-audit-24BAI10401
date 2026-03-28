#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Akriti Khantwal | Course: Open Source Software

echo "==========================================="
echo "   Open Source Manifesto — Akriti Khantwal"
echo "==========================================="
echo "Answer three questions to generate your manifesto."
echo ""

# -------- INTERACTIVE INPUT --------
# Using -r to handle backslashes correctly if entered
read -p "1. Name one open-source tool you use every day: " -r TOOL
read -p "2. In one word, what does 'freedom' mean to you? " -r FREEDOM
read -p "3. Name one thing you would build and share freely: " -r BUILD

# -------- VARIABLES --------
DATE=$(date '+%d %B %Y')
# Added a date stamp to the filename so you can keep a history of versions
TIMESTAMP=$(date '+%Y-%m-%d')
OUTPUT="manifesto_$(whoami)_$TIMESTAMP.txt"

# -------- COMPOSE MANIFESTO --------
{
    echo "Open Source Manifesto — Generated on $DATE"
    echo "Author: Akriti Khantwal"
    echo ""
    echo "I use $TOOL every day because it empowers me to create and innovate."
    echo "To me, freedom means '$FREEDOM', which allows knowledge and tools to be shared openly with everyone."
    echo "I dream of building $BUILD and releasing it freely for the benefit of the global community."
    echo ""
    echo "This is my personal commitment to the open-source philosophy."
} > "$OUTPUT"

# -------- DISPLAY RESULT --------
echo ""
echo "==========================================="
echo "Your manifesto has been generated and saved to: $OUTPUT"
echo "-------------------------------------------"
cat "$OUTPUT"
echo "==========================================="

# -------- ALIAS DEMO --------
# To make this permanent, you could add this to your ~/.bashrc:
# alias showmanifest='cat $(ls -t manifesto_$(whoami)_*.txt | head -n 1)'
