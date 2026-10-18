
#!/bin/bash
set -e

echo "Updating Ubuntu..."
sudo apt-get update

echo "Installing dependencies..."
sudo apt-get install -y wget libfuse2t64

echo "Downloading MoreLogin..."
mkdir -p "$HOME/Applications"
cd "$HOME/Applications"

wget -O MoreLogin.AppImage \
"https://get.morelogin.com/client/prod/linux/x64/2.54.0/MoreLogin_x86_64_2.54.0.AppImage"

chmod +x MoreLogin.AppImage

echo "Launching MoreLogin..."
./MoreLogin.AppImage --no-sandbox
