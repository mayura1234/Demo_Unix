<<comment
Shell script to list all the files in the directory whose filename is atleast 10 charecters
comment
for i in $*
do 
fl=`expr length $i`
if [ $fl -ge 10 ]
then 
echo "$i"
else
echo "No file exists"
fi
done 

