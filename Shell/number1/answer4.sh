#!/bin/bash
#author:wenhao

echo "####################"
free -m | sed -n '2 p' | awk '{printf "Mem total:%sM\nMem Use:%sM\nMem free:%sM\n",$2,$3,$4}'
echo "####################"
