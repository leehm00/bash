#!/bin/bash
read name # 读取输入
echo "$name is smart"
echo -e "OK! \n" # -e 开启转义,\n表示换行
echo "It is a test with enter"
echo -e "OK! \c" #-e开启转义,\c不换行
echo "It is a test no enter"