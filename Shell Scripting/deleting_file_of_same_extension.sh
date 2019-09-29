# deleting file of same extension

#bin/bash

read -e -p "PATH 1 : " path1
read -e -p "PATH 2 : " path2
read -e -p "EXTENSION : " ext

echo "Files in path1 : "
ls $path1/*.$ext

echo "Files in path2 : "
ls $path2/*.$ext

rm $path1/*.$ext

cd $path2

tar -cf archive.tar *.$ext

read -e -p "BACKUP FOLDER : " bkp


mv archive.tar $bkp

rm $path2/*.$ext
