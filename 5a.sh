<<comment
Shell script that accepts filename as arguments and display its creation time if file exists and if does not send output error message
comment

file1=$1
if [ -e $1 ]
then
set -- `ls -ld $file1`
echo "$file1 time is $6 $7 $8"
else
echo "File does not exists"
fi  
