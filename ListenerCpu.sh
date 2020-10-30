#!/bin/bash

maxCpu=8.0
num=0

while true
do

pid=$(ps -ef |grep coreaudiod | grep -v "grep" | awk '{print $2}')

if [ "$pid" = "" ];then
	echo "$pid is null"
	exit 1
fi

cpu=$(ps -p $pid -o %cpu | awk 'END {print $1}')

isHigh=`echo "$cpu > $maxCpu" | bc`

if [ "$isHigh" = 1 ];then
	echo 'coreaudiod cpu Too high '
	num=$[$num+1]
fi

if [ $num -gt 2 ];then
	echo "zhuzhijun123" | sudo -S killall coreaudiod
	echo 'killall coreaudiod'
	num=0
fi

sleep 10

done