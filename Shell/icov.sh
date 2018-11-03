#!/bin/bash
   echo -n "Plase source file name:"
   read aa
   echo -n "Plase target file name:"
   read bb
   iconv -f gbk -t utf8 $aa -o $bb
   if [ $? -eq 0 ]
   then
       echo "ok..."
       mv $bb $aa
       echo "ok.ok.."
   else
       echo "fail..."
       exit 1
   fi
