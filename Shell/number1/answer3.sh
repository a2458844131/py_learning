#!/bin/bash
#author:wenhao

Disk_count=$(fdisk -l | grep "Disk /dev" | wc -l)
Disk_name=$(ls /dev/ | grep "sd" | grep -w "...")

echo "本机硬盘有${Disk_count}个"
for i in $Disk_name
do
	Part_count=$(fdisk -l | grep "$i" | grep -v "Disk /dev" | wc -l)
	echo "其中${i}有${Part_count}个分区"
done
