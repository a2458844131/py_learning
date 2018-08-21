#!/bin/bash
#author:wenhao

echo -n "系统类型："
cat /etc/redhat-release
echo "####################"
echo -n "内核版本："
uname -r
echo "####################"
echo "当前登录用户："
whoami
echo "####################"
fdisk -l | grep "Disk /dev" | awk -F'[,/:]' 'BEGIN{d;}{print $3":"$4;disk_count++;}END{printf "共有%d块硬盘\n",disk_count}'
echo "####################"
free -m | awk '{if($0~/Mem/)print "内存总量："$2"M"}'
echo "####################"
echo "硬件厂商："
dmidecode  | grep "Product"
echo "####################"
#cat /proc/cpuinfo | grep -E 'processor|cpu family' | awk -F'[ :]' 'BEGIN{cpu_count=0;}{if($0~/processor/) cpu_count++;}END{printf "cpu%d:",cpu_count;print "核心数:",$NF}'
echo "####################"
