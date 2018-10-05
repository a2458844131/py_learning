#!/bin/bash
#author:wenhao

cat /etc/passwd | awk -F: 'BEGIN{sysuser_count=0;}{if($3<500)sysuser_count++;if($NF~/bash/)printf "用户:%s 拥有登录系统权限为：YES\n",$1;else printf "用户:%s 拥有登录系统权限为:YES\n",$1;}END{printf "共有%d个系统用户\n",sysuser_count}'
