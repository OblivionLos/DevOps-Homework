
cd ~
a=`ls -la | grep ^d | wc -l`
b=`ls -al | grep ^d | awk '{print $9}'`
echo "В моем домашнем каталоге $a поддиректорий: $b"

