a=`date | awk '{print $2 " " $3 " " $4 "\t" $5}'`
b=`uptime | awk '{print $3}'`
echo "$a uptime: $b"
users
