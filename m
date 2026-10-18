
#!/bin/bash
set -e

echo "Updating Ubuntu..."
sudo apt-get update

echo "Installing dependencies..."
sudo apt-get install -y wget ca-certificates

echo "Downloading MoreLogin..."
cd /tmp

wget -O MoreLogin.deb \
"https://get.morelogin.com/client/prod/linux/x64/2.54.1/MoreLogin_linux_x64_2.54.1.0.deb"

echo "Installing MoreLogin..."
sudo apt-get install -y /tmp/MoreLogin.deb

echo "Launching MoreLogin..."
/opt/MoreLogin/MoreLogin
