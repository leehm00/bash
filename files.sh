#!/bin/bash

file="./f1" # f1是777文件
if [ -r $file ]
then
    echo "⽂件可读"
else
    echo "⽂件不可读"
fi
if [ -w $file ]
then
    echo "⽂件可写"
else
    echo "⽂件不可写"
fi
if [ -x $file ]
then
    echo "⽂件可执⾏"
else
    echo "⽂件不可执⾏"
fi
if [ -f $file ]
then
    echo "⽂件为普通⽂件"
else
    echo "⽂件为特殊⽂件"
fi
if [ -d $file ]
then
    echo "⽂件是个⽬录"
else
    echo "⽂件不是个⽬录"
fi
if [ -s $file ]
then
    echo "⽂件不为空"
else
    echo "⽂件为空"
fi
if [ -e $file ]
then
    echo "⽂件存在"
else
    echo "⽂件不存在"
fi