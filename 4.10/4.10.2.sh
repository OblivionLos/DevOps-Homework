cd $HOME/tmp ;touch check.txt || mkdir $HOME/tmp ; cd $HOME/tmp ;touch check.txt 
while :
do
 a=`date | awk '{print $5 "  " $2 "  " $3 "  " $1 "  " $4 }'`
 b=`ps aux --no-heading | wc -l`
 echo ""$a" Количество процессов: "$b"" >>check.txt

 sleep 60
done
exit 0
