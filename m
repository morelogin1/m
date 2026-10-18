
#!/bin/bash
set -e

echo "Installing dependencies..."
sudo apt-get update
sudo apt-get install -y wget libfuse2t64

echo "Downloading MoreLogin AppImage..."
cd /tmp

wget --show-progress -O MoreLogin.AppImage \
"https://get.morelogin.com/client/prod/linux/x64/2.54.0/MoreLogin_x86_64_2.54.0.AppImage"

echo "Making MoreLogin executable..."
chmod +x MoreLogin.AppImage

echo "Launching MoreLogin..."
./MoreLogin.AppImage
