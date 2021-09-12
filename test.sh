#!/bin/bash
echo "Hello world!"
my_var="hello"
readonly my_var
echo ${my_var} #注释必须用一个空格,空格不会被无视
echo ${#my_var} #输出字符串长度
echo ${my_var:1:3} #输出切片
 #仅支持一维数组
my_array=(var1 var2 var3 var4 var5 var6) #数组元素用空格隔开
echo ${my_array[0]}
echo ${my_array[@]}
echo ${#my_array[@]} ${#my_array[*]} #两种方式获取数组长度
:<<EOF
我是注释
我也是注释
我还是注释
EOF
echo ${#my_array[1]} #单个数组元素长度取法

#下面是传递的参数方式,执行时需要./test.sh 1 2
echo "传递参数实例"
echo "执行的文件名:$0"
echo "第一个参数:$1"
echo "第二个参数:$2"
echo "参数个数为$#"
echo "传递的参数作为⼀个字符串显示：$*"
:<<EOF
$* 与 $@ 区别：
相同点：都是引用所有参数。
不同点：只有在双引号中体现出来。
假设在脚本运行时写了三个参数 1、2、3，
则 " * " 等价于 "1 2 3"（传递了一个参数），
而 "@" 等价于 "1" "2" "3"（传递了三个参数）。
EOF
echo "-- \$* 演⽰ ---"
for i in "$*"; do
    echo $i
done
echo "-- \$@ 演⽰ ---"
for i in "$@"; do
    echo $i
done
# Shell 里面的中括号（包括单中括号与双中括号）可用于一些条件的测试
