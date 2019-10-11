#bin/bash

myvar="This is test"

echo "${myvar}"

num=`expr length "$myvar"`

echo "${num}"
