echo
while [ "$var" != "quit" ]
do
 echo -n "Введите данные (quit - выход) :"
 read var
 echo "Введено: $var"
 echo
done
exit 0
