echo "Enter a file"
read filename
if [ -f $filename ]
then n=20
	while read line
	do
		start=1
	end=40
	length=`expr length "$line"`
	while [ $length -ge 40 ]
	do
		echo -n "`echo $line | cut -c $start-$end`\\"
		length=`expr $length - $end`
		start=`expr $end + 1`
	end=`expr $end + 40`
done
echo -n "`echo $line | cut -c $start-`\\"
echo " "
done < $filename
else
	echo "$file doesn't exists"
fi

