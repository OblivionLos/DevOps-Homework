echo $PATH
echo $PATH | tr ':' '\n'|tail -n1
echo $PATH | tr ':' '\t'| awk '{print $11}'
echo $PATH | cut -d: -f11


