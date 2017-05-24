#!/bin/bash
while :
do
        echo -n "input a number between 1 to 5:"
        read aNum
        case $aNum in
                1|2|3|4|5) echo "your number is $aNum"
                ;;
        *) echo "==============="
                continue
                echo "------"
                #break
        esac
done
