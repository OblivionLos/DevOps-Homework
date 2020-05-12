vmstat 3 10 > vm.txt
a=`awk '/[0-9]/ { SUM += $12 } END {print SUM / 10 }' vm.txt`
echo "Context switches: "$a"" >> ~/memory/stat.txt
b=`uptime | awk '{ print $10 }'`
echo "Load avarage: "$b"" >> ~/memory/stat.txt
c=`free -h`
echo "Pages:" >> ~/memory/stat.txt
echo "$c" >> ~/memory/stat.txt
d=`df -h`
echo "Memory:" >> ~/memory/stat.txt
echo "$d" >> ~/memory/stat.txt
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++" >> ~/memory/stat.txt
