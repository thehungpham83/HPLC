#!/bin/bash
set -e

echo "=== BAT DAU SETUP CHROME ==="


########################################
# 1️⃣ GOOGLE CHROME
########################################
echo ">>> Cai Google Chrome"

if cmd_exists google-chrome; then
    echo "[OK] Chrome da cai"
else
    wget -O /tmp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i /tmp/chrome.deb
fi
