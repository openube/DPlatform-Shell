#!/bin/sh

[ $1 = update ] && npm udpate jsbin && whiptail --msgbox "JSBin updated!" 8 32 && break
[ $1 = remove ] && sh sysutils/services.sh remove JS_Bin && npm uninstall jsbin && whiptail --msgbox "JSBin removed!" 8 32 && break

. sysutils/NodeJS.sh

# Installation
npm install -g jsbin

# Add SystemD process and run the server
sh sysutils/services.sh JSBin "/usr/bin/node /usr/bin/jsbin" /

whiptail --msgbox "JSBin installed!

Open your browser to http://$URL:3000" 12 64