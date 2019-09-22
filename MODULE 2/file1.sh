#bin/bash

read -e -p "Enter name of process whose logs to fetch : " log_application
read -e -p "Enter location to save log archive : " archive_location
read -e -p "Enter name of archive : " archive_name

more /var/log/syslog | grep $log_application > $archive_location/$archive_name.txt

cd $archive_location

tar -cf $archive_name.tar $archive_name.txt

rm $archive_name.txt

echo ""
echo ""
echo "File archived is : $archive_name and is located at $archive_location"
