#bin/bash
#Check if a number is armstrong

read -p "Enter a number : " number

temp=$number
sum=0
digits=0
n=0

while [ $temp -gt 0 ]
do
digits=`expr $temp % 10`
n=`expr $digits \* $digits \* $digits`
sum=`expr $sum + $n`
temp=`expr $temp / 10`
done

if [ $sum -eq $number ]
then
echo "It is an Armstrong Number."
else
echo "It is not an Armstrong Number."
fi
