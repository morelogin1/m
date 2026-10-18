
#!/bin/bash
set -e

cd /tmp

sudo apt-get update
sudo apt-get install -y wget

wget -O MoreLogin.deb "https://get.morelogin.com/client/prod/linux/x64/2.54.1/MoreLogin_linux_x64_2.54.1.0.deb"

sudo apt-get install -y ./MoreLogin.deb

/opt/MoreLogin/MoreLogin
