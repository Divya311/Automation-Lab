#!/bin/bash

FILES=/home/neha/myfile/DevAuto/*
for f in $FILES
do
  echo "Processing $f"
  echo -en '\n'  
  wc $f
  echo -en '\n'
  #ls -l $f
  stat -c "%U" $($f)
  cat -n $f
  echo -en '\n'
  echo -en '\n'
  echo -en '\n'
done
