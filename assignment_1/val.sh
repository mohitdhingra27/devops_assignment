#!/bin/bash
file_name=$1
params=$2
echo $params > temp.txt
sed -i 's#/# #g' temp.txt
j=1
for i in `cat temp.txt`; do
  export parm$j=$i
  j=$((j+1))
done

echo $file_name
echo $parm1 $parm2 $parm3
jq --arg v1 "$parm1" --arg v2 "$parm2" --arg v3 "$parm3" '.[$v1] | .[$v2] | .[$v3]' $file_name
