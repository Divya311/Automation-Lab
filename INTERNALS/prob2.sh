#bin/bash



more /var/log/syslog > /home/kshitiz/log.txt

cd /home/kshitiz


tar -rf logs.tar.gz log.txt

rm log.txt

 
