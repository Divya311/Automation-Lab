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


for file in $loc2/*;
do
for test in $loc1/*;
do
if [ $loc == $loc1 ]
then
cmp --silent $file $test && rm $test && tar -rf test.tar $file
elif [ $loc == $loc2 ]
then
cmp --silent $file $test && rm $file && tar -rf test.tar $test
fi
done
done

echo ""
echo "Files deleted and identical stored in archive"
