: ${1?"File didn't find"}
exec 0< $1
count=1
while read line
do 
pass=`< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c8`
log=`echo "User #$count: "$line" : "$pass""`
#echo "$log"
count=$(( $count + 1 ))
echo "$log" > $line-login-password.txt 
sudo useradd -d /home/$line -m -s /bin/bash -p $(echo $pass| openssl passwd -crypt -stdin) $line
done
exit 0

