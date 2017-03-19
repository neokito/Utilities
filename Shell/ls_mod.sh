#!/bin/bash
#@Author Abhiram
#Utility to count the number of files and directories in a folder
declare -i count2=-1
declare -i countd=0

for i in `ls -ltr|cut -c 1`
do
if [ $i = 'd' ]; then
$((++countd)) 2>/dev/null
else
$((++count2)) 2>/dev/null
fi
done
echo "------------------------"
echo "Number of files =$count2"
echo "Number of directories =$countd"
echo "------------------------"
