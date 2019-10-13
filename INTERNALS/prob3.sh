#bin/bash

read -e -p "Enter location of archived file : " location
read -e -p "Enter days before you want to delete : " day

cd $location

rm $(find -mtime +$day -name "*.sh")


