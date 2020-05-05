cat /etc/passwd > whitesheet.txt
while :
 do
  cat /etc/passwd > newlist.txt
  diff whitesheet.txt newlist.txt|tr ':' '\t'|awk '/>/ {print "Login:" "\t" $2 "\t" "UID:" "\t" $4}'>checklist.txt
  sleep 60
done

