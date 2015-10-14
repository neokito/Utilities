#!/bin/bash
declare -i count2=-1
declare -i countd=0
#for i in `ls -p | grep -v /`
#do
#if [ $i != 'd' ]; then
#echo -ne $i
#echo ""
#$((++count2)) 2>/dev/null
#fi
#done

#for i in `ls -d */`
for i in `ls -ltr|cut -c 1`
do
if [ $i = 'd' ]; then
#echo -ne $i
#echo ""
$((++countd)) 2>/dev/null
else
$((++count2)) 2>/dev/null
fi
done
echo "------------------------"
echo "Number of files =$count2"
echo "Number of directories =$countd"
echo "------------------------"
