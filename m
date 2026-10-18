
#!/bin/bash
set -e

echo "Installing dependencies..."
sudo apt-get update
sudo apt-get install -y wget xdg-utils

echo "Opening MoreLogin download page..."
xdg-open "https://www.morelogin.com/download" || true

echo ""
echo "Download the Linux Desktop .deb installer."
echo "Save it to your Downloads folder."
echo ""
read -rp "Press ENTER when the download finishes..."

DEB=$(find "$HOME/Downloads" -type f \
  -iname '*morelogin*.deb' \
  -printf '%T@ %p\n' | sort -nr | head -1 | cut -d' ' -f2-)

if [ -z "$DEB" ]; then
    echo "MoreLogin .deb file not found."
    exit 1
fi

echo "Installing $DEB..."
sudo apt-get install -y "$DEB"

echo "Launching MoreLogin..."
/opt/MoreLogin/MoreLogin
