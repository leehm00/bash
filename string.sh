#!/bin/bash
a="abc"
b="def"
if [ $a = $b ]
then
    echo "a=b"
else
    echo "a!=b"
fi
if [ -z $a ]
then
    echo "-z $a : 字符串⻓度为 0"
else
    echo "-z $a : 字符串⻓度不为 0"
fi
if [ -n "$a" ]
then
    echo "-n $a : 字符串⻓度不为 0"
else
    echo "-n $a : 字符串⻓度为 0"
fi
if [ $a ]
then
    echo "$a : 字符串不为空"
else
    echo "字符串为空"
fi