#! /bin/bash

if [[ $1 = "-i" ]]
then
if [[ -d ~/osfetch ]]
then
sleep 0
exit
else
cd ~
git clone https://github.com/entynetproject/osfetch
cd ~/osfetch
exit
fi
fi

if [[ $1 = "-u" ]]
then
if [[ -d ~/osfetch ]]
then
rm -r ~/osfetch
exit
else
sleep 0
exit
fi
fi

echo -e "Usage: ./check.sh [OPTIONS...]"
echo -e "Copyright (C) 2019, Entynetproject. All Rights Reserved."
echo -e ""
echo -e "  -i  Installation mode."
echo -e "  -u  Uninstallation mode."
echo -e ""
exit
