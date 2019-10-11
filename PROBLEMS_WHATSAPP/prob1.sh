#bin/bash

echo "Enter a Hexadecimal Number with spaces between digits : "
read -a string

for element in ${string[@]}
do
case $element in
	0)
		echo "$element -- 0000"
		;;
	1)
		echo "$element -- 0001"
		;;
	2)
		echo "$element -- 0010"
		;;
	3)
		echo "$element -- 0011"
		;;
	4)
		echo "$element -- 0100"
		;;
	5)
		echo "$element -- 0101"
		;;
	6)
		echo "$element -- 0110"
		;;
	7)
		echo "$element -- 0111"
		;;
	8)
		echo "$element -- 1000"
		;;
	9)
		echo "$element -- 1001"
		;;
	a)
		echo "$element -- 1010"
		;;
	b)
		echo "$element -- 1011"
		;;
	c)
		echo "$element -- 1100"
		;;
	d)
		echo "$element -- 1101"
		;;
	e)
		echo "$element -- 1110"
		;;
	f)
		echo "$element -- 1111"
		;;
	*)
		echo "Invalid hexadecimal digit. -- $element">&2
esac
done
