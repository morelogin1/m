#!/bin/bash
cd /tmp
wget -q https://get.morelogin.com/client/prod/linux/x64/2.54.0/MoreLogin_x86_64_2.54.0.AppImage
chmod +x MoreLogin_x86_64_2.54.0.AppImage
./MoreLogin_x86_64_2.54.0.AppImage --no-sandbox
