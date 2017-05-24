#!/bin/bash
min=1
max=10
while [ $min -lt $max ]
do
    echo $min
    min=`expr $min + 1`
done
