#!/bin/bash
if [$# -le 0];then
  echo "没有足够的参数"
  exit
fi

sum=0
while [ $# -gt 0 ]; 
do
  sum=$(expr $sum +$1)
  #sum=$[$sum+$1]
  shift
  #shift2 #一次移动两个参数
done
echo result is $sum
