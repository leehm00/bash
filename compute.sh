#!/bin/bash
# 不能直接计算,但是可以依靠expr
vara=2
varb=4
val=`expr $vara + $varb` # 注意是反引号,表达式之间必须有空格
echo "两数之和为 : $val"
echo "两数之积为:`expr $vara \* $varb`"
if [ $vara != $varb ]
then
    echo "两数不相等"
else
    echo "两数相等"
fi
a=10
b=20
if [ $a -lt 100 -a $b -gt 15 ] # 也可以写作[[ $a -lt 100 && $b -gt 15 ]]
then
    echo "$a ⼩于 100 且 $b ⼤于 15 : 返回 true"
else
    echo "$a ⼩于 100 且 $b ⼤于 15 : 返回 false"
fi
if [ $a -lt 100 -o $b -gt 100 ]
then
    echo "$a ⼩于 100 或 $b ⼤于 100 : 返回 true"
else
    echo "$a ⼩于 100 或 $b ⼤于 100 : 返回 false"
fi