#bin/bash

b=$?
read -e -p "Enter the command to check : " command
test=`$command`
a=$?
if [ $a -eq $b ];
then
echo "Command Found"
else
echo "Command not Found"
fi
