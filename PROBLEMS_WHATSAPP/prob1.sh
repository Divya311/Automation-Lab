#bin/bash

echo "Enter a Hexadecimal Number with spaces between digits : "
read -a string

for element in ${string[@]}
do
echo $element
done
