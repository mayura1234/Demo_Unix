<<comment
10 charecter file size
comment
for i in `ls`
do
	fl=`expr length $i`
	if [ $fl -ge 10 ] 
	then
		echo "The file $i has $fl characters"
	fi
done
