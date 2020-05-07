echo "Процессов пользоваетеля:"
echo "<$USER>"
echo `ps -u $USER | wc -l`
echo "Процессов пользоваетеля root:"
echo `ps -u root | wc -l`
