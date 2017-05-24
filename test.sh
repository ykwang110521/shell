#!/bin/bash
echo "Hello World !`date`"

#printf "%d %s\n" 2 "abcd"

COUNTER=0
while [ $COUNTER -le 5 ]
do
   echo $COUNTER
   COUNTER=`expr $COUNTER + 1`
done

a=0
until [ ! $a -lt 10 ]
do
    echo $a
    a=`expr $a + 1`
done


hello(){
echo "input a number between 1 and 4"
read aNum
case $aNum in
    1) echo "1111111"
    ;;
    2) echo "2222222"
    ;;
    3) echo "3333333"
    ;;
4) echo "44444444"
;;
*) echo "*******"
;;
esac
}
val=`expr 6 \* 3`
echo "$val"

arr=("11aa" "22bb" "dddd33" "4dfdd4")
for l in ${arr[*]}
do
        echo "$l"
done

name="LEEABCDEFG"
greet="hello,"$name"!"
greet1="hello,${name}!"
echo $greet,$greet1
echo ${#name}
echo ${name:1:3}

a=200
b=200
if test $[a] -ge $[b]
then
   echo "======"
else
  echo "-------"
fi

#read PERSON
#echo "Hello, $PERSON"
name1="LEE"
echo $name1
#echo -e "\n"
unset name1
echo ${name1}
a=10
echo -e  "Value of a is $a \n"

#echo "file name:$0"
echo "first Parameter:$1"
echo "Second Parameter:$2"
echo "$3"
#echo "Quoted Values:$@"
#echo "Quoted Valued:$*"
#echo "Total Number of Parameters:$#"
                                       
