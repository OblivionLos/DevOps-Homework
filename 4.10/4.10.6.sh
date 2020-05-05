function linear {
echo -n "Введите параметр a: "
read a
echo -n "Введите параметр b: "
read b
echo -n "Введите параметр c: "
read c

let d=($c-$b)/$a
echo "x= "$d""
}
linear
