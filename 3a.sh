<<comment
Create a script file called file properties that reads a filename entered and outputs its properties
comment
echo "Enter a filename"
read f1
if [ -e $f1 ]
then 
set -- `ls -l $f1`
echo "Permissions are : $1"
echo "File links are : $2"
echo "Owner is : $3"
echo "Group : $4"
echo "File size : $5"
echo "Date and Time : $6 $7 $8"
else
echo "File Doesn't exists"
fi  
