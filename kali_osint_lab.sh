#!/bin/bash

# This script automates common Kali OSINT lab steps.
# Assumes the user is 'kali'

echo "1. Checking sudo access for user 'kali'"
groups kali

echo -e "\n2. Viewing command history (last 10 commands):"
history | tail -10

echo -e "\n3. Demonstrating tab completion for 'history' and 'ls /media'"
echo "Type 'hi' and press Tab to autocomplete to 'history'."
echo "Type 'ls /me' and press Tab to autocomplete to 'ls /media'."
# These steps are interactive and shown as instructions.

echo -e "\n4. Running SpiderFoot (if installed)"
if command -v spiderfoot &> /dev/null
then
    echo "Starting SpiderFoot on http://127.0.0.1:5001"
    nohup spiderfoot -l 127.0.0.1:5001 &
    echo "Open your browser and visit http://127.0.0.1:5001"
else
    echo "SpiderFoot is not installed. To install: sudo apt update && sudo apt install spiderfoot"
fi

echo -e "\n5. Running Recon-ng (if installed)"
if command -v recon-ng &> /dev/null
then
    echo "Starting Recon-ng. Use 'marketplace search' to view modules."
    recon-ng
else
    echo "Recon-ng is not installed. To install: sudo apt update && sudo apt install recon-ng"
fi

echo -e "\n6. For WhatsMyName and OSINT Framework, open your browser and visit:"
echo "   - https://whatsmyname.app"
echo "   - https://osintframework.com"

echo -e "\nScript Complete."
