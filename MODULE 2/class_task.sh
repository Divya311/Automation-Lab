#bin/bash

read -e -p "Location 1 : " loc1
read -e -p "Location 2 : " loc2

echo ""
echo ""
echo "Identical files are : "
for file in $loc2/*;
do
for test in $loc1/*;
do
cmp --silent $file $test && echo $test
done
done


echo ""
echo ""
read -e -p "Location to delete : " loc

if [ $loc == $loc1 ]
then
for file in $loc2/*;
do
for test in $loc1/*;
do
cmp --silent $file $test && rm $test && tar -rf test.tar $file
done
done
fi

if [ $loc == $loc2 ]
then
for file in $loc1/*;
do
for test in $loc2/*;
do
cmp --silent $file $test && rm $test && tar -rf test.tar $file
done
done
fi

echo ""
echo "Files deleted and identical stored in archive"
