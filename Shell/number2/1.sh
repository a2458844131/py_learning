#!/bin/bash
if [ $# -eq 1 ]
then
    echo "OK 参数限制正确。您只传了一个参数"
    aa="$@"
    echo $aa
else
    echo "出错啦，参数只能传一个，多了或者少了也不行。。明白不？"
    exit 1
fi
