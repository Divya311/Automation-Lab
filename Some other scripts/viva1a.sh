# Logging all logs of cron scheduler and archiving them

#bin/bash



more /var/log/syslog | grep "CRON" > /home/kshitiz/cron.txt

cd /home/kshitiz


tar -cf cron.tar cron.txt

rm cron.txt


 
