echo "Домашний каталог пользователя"
echo "<$USER>"
echo "содержит обычных файлов:"
a=`ls ~ -l | grep '^-' | wc -l` 
echo "$a"
b=`ls ~ -al | grep '^-' | wc -l`
let c=($b-$a)
echo "скрытых файлов:"
echo "$c"
