
#!/bin/bash
set -e

sudo apt-get update
sudo apt-get install -y wget libfuse2t64

cd /tmp

wget -O MoreLogin.AppImage \
"https://get.morelogin.com/client/prod/linux/x64/2.54.0/MoreLogin_x86_64_2.54.0.AppImage"

chmod +x MoreLogin.AppImage

./MoreLogin.AppImage
