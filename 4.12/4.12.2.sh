count=0
tar -cvzf hello.tar.gz hello > /dev/null
function hash {
md5sum $a1 > $a2.md5
a=`cat $a2.md5 | awk '{print $1}'` 
}
a1=hello.cpp
a2=hello
hash
pt1=$a
a1=functions.h
a2=functions
hash
pt2=$a
a1=main.cpp
a2=main
hash
pt3=$a
a1=factorial.cpp
a2=factorial
hash
pt4=$a

while :
do
	a1=hello.cpp
	a2=hello
	hash
	pt11=$a
	a1=functions.h
	a2=functions
	hash
	pt22=$a
	a1=main.cpp
	a2=main
	hash
	pt33=$a
	a1=factorial.cpp
	a2=factorial
	hash
	pt44=$a
	if [[ $pt1 != $pt11 || $pt2 != $pt22 || $pt3 != $pt33 || $pt4 != $pt44 ]]
	then
	tar -cvzf hello-$count.tar.gz hello > /dev/null
	count=$(( $count + 1))
	g++ main.cpp hello.cpp factorial.cpp -o hello
	d=`date | awk '{print $2 " " $3 " " $1 " " $4 " " $5}'`
	echo "Project recompiled at $d" >> logforcomp.txt
	pt1=$pt11
	pt2=$pt22
	pt3=$pt33
	pt4=$pt44
	fi
	sleep 60
done
exit 0

