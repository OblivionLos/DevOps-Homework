: ${1?"Введите первое число"}
: ${2?"Введите второе число"}
if (($# >= "3"))
	then echo "Слишком много аргументов"


elif (($1 < $2))
	then echo "$2"	


elif (($1 > $2))
	then echo "$1"


elif [ "$1" -eq "$2" ]
	then echo "Equal"
fi

