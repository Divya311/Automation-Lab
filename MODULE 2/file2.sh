#bin/bash

read -e -p "Enter location of archived file : " location

cd $location

rm $(find -mtime +2 -name "*.tar")
rm $(find -mtime +2 -name "*.tar.gz")
rm $(find -mtime +2 -name "*.tar.bz2")
