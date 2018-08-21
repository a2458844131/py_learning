#!/bin/bash
#author:wenhao

count=$(ifconfig | grep "inet addr:" | grep -v "127.0.0.1" | wc -l)
echo "###################"
echo "本机IP地址有${count}个"
echo "分别为:"
ifconfig | grep -v "127.0.0.1" | grep "inet addr:" | sed 's/:/ /g' | awk '{printf "IP:%s Mask:%s\n",$3,$5}'
route -n | grep "UG" | awk '{printf "网关地址:IP%s\n",$2}'
echo "###################"
