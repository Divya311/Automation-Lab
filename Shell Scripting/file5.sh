#bin/bash

function sum
{
  echo "Parameter is $1"
  echo "Parameter is $2"
  x=$1
  y=$2
  add=`expr $x + $y`
  return add
}

result=sum "1" "2"

echo "Sum is $result"
