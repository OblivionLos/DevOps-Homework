echo -n "Введите аргумент(ы):"
read
for var in $REPLY
do
let "a=var**2"
echo "Квадрат числа "$var" :"$a""
done
