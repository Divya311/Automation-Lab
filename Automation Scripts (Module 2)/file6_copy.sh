#bin/bash
read -e -p "Enter the command to check : " com
if [ $(command -v $com) ];
then
echo "Command Found"
echo "Type of Command is $(type -p $com)"
else
echo "Command not Found"
fi
