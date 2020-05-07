echo -n "Введите искомый текст:"
read a
echo -n "Файл для поиска:"
read b
echo -n "Количество строк для отображения:"
read c
grep --max-count=$c "$a" $b | sort -h | nl
