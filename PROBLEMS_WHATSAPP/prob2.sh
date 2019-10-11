#bin/bash

echo "Enter a Octal Number with spaces between digits : "
read -a string

for element in ${string[@]}
do
case $element in
	0)
		echo "$element -- 000"
		;;
	1)
		echo "$element -- 001"
		;;
	2)
		echo "$element -- 010"
		;;
	3)
		echo "$element -- 011"
		;;
	4)
		echo "$element -- 100"
		;;
	5)
		echo "$element -- 101"
		;;
	6)
		echo "$element -- 110"
		;;
	7)
		echo "$element -- 111"
		;;
	*)
		echo "Invalid octal digit. -- $element">&2
esac
done
