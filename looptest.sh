#!/usr/bin/env bash
x=0
while [ $? -lt 1 ]
do
 x=$(expr $x + 1)
 sh $1 
done &> output.txt
echo $x >> output.txt
