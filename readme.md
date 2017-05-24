# shell
# shell脚本
shell本身是一个用C语言编写的程序，它是用户使用Unix/Linux的桥梁，用户的大部分工作都是通过Shell完成的。Shell即是一种命令语言，又是一种程序设计语言。作为命令语言，它交互式地解释和执行用户输入的命令；作为程序设计语言，它定义了各种变量和参数，并提供了许多在高级语言中才具有的控制结构，包括循环和分支。
## shell变量
定义变量时，变量名不加美元符号($)，如：
```
var=1
```
变量定义及输出
```
name="LEE"
greet="hello,"$name"!"
greet1="hello,${name}!"
echo $greet,$greet1
```
获取变量

```
echo "file name:$0"
echo "first Parameter:$1"
echo "Second Parameter:$2"
echo "$3"
echo "Quoted Values:$@"
echo "Quoted Valued:$*"
echo "Total Number of Parameters:$#"
```

## Shell运算符
shell支持很多运算符，包括算数运算符、关系运算符、布尔运算符、字符串运算符和文件测试运算符。
### 算术运算符
shell要支持数学运算，用expr来实现，如下：
```
#!/bin/bash
val=`expr 2 + 2`
echo "Total value : $val"

val=`expr 6 \* 3`
echo "$val"
```
### 关系运算符
关系运算符有

运算符 | 说明 | 例子
---|---|---
-eq | 检测两个数是否相等，相等返回 true| [ $a -eq $b ] 返回 true
-ne|检测两个数是否相等，不相等返回 true| [ $a -ne $b ] 返回 true
-gt|检测左边的数是否大于右边的，如果是，则返回 true|[ $a -gt $b ] 返回 false
-lt|检测左边的数是否小于右边的，如果是，则返回 true|[ $a -lt $b ] 返回 true
-ge|检测左边的数是否大等于右边的，如果是，则返回 true|[ $a -lt $b ] 返回 true
-le|检测左边的数是否小于等于右边的，如果是，则返回 true|[ $a -le $b ] 返回 true
例子

```
a=200
b=200
if test $[a] -ge $[b]
then
   echo "两个数相等"
else
   echo "两个数不相等"
fi
```

### 布尔运算符
- ！非运算 
- -o 或运算 a=10 [ $a -lt 20 -o $b -gt 100 ] 返回 true
- -a 与运算 a=10 [ $a -lt 20 -o $b -gt 100 ] 返回 true

## shell字符串
拼接字符串
```
name="LEE"
greet="hello,"$name"!"
greet1="hello,${name}!"
echo $greet,$greet1
```
获取字符串长度

```
string="abcd"
echo ${#string} #输出 4
```
截取字符串
```
string="alibaba is a great company"
echo ${string:1:4} #输出liba
```
## 数组
在Shell中，用括号来表示数组，数组元素用“空格”符号分割开。定义数组的一般形式为：
arr=("11aa" "22bb" "dddd33" "4dfdd4")
循环数组
```
arr=("11aa" "22bb" "dddd33" "4dfdd4")
for l in ${arr[*]}
do
        echo "$l"
done
```

## echo和printf 命令

```
echo "Hello World !`date`"
printf "%d %s\n" 2 "abcd"

```
## if-else 语句

```
a=200
b=200
if test $[a] -ge $[b]
then
   echo "======"
else
   echo "-------"
fi
```
## case esac 语句

```
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
```
## for 循环语句
```
#!/bin/bash

for var1 in 1 2 3
do
   for var2 in 0 5
   do
      if [ $var1 -eq 2 -a $var2 -eq 5 ]
      then
        break 2
      else
        echo "$var1 $var2"
      fi
    done
done

```
## while 循环语句

```
#!/bin/bash
min=1
max=10
while [ $min -lt $max ]
do
    echo $min
    min=`expr $min + 1`
done
```

## until 循环
until 循环执行一系列命令直至条件为 true 时停止。until 循环与 while 循环在处理方式上刚好相反。一般while循环优于until循环，但在某些时候，也只是极少数情况下，until 循环更加有用。
```
a=0
until [ ! $a -lt 10 ]
do
    echo $a
    a=`expr $a + 1`
done
```


## 跳出循环

```
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
```
## 函数

```
#!/bin/bash
fun_test() {
        read a
        read b
        return $(($a+$b))
}

fun_test
```







