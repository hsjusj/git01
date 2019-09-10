#!/bin/bash

max=100
target=$[$RANDOM%($max+1)]
count=0

echo "#######猜数游戏#######"

while :
do
    read -p "请输入数字(0-100之间)" num
    if [ $num -lt $target ]
    then
        echo "小了"
    elif [ $num -gt $target ]
    then
        echo "大了"
    else
        echo "猜对了！一共猜了"${count}"次"
        break
    fi
    let "count++"
done
