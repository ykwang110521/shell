#!/bin/bash
fun_test() {
        #read a
        #read b
        #return $(($a+$b))
        echo "$1"
        echo "$2"
        echo "22222 $1"
#       return `expr 1 + 3`
}

fun_test
#ret=$?
#echo "$ret"
