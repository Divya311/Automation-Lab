# bin/bash

read -p "Enter listening port : " listening_port
netstat -au | grep -q ":listening_port"

if [ [ $? != 0 ] ];
then
echo "ERROR, Web server is not running" > &2
/etc/init.d/apache2 restart
fi

backupfolder="/home/kshitiz/backups"
cp -r /var/log/apache2/ $backupfolder

netstat -au
netstat -lu
