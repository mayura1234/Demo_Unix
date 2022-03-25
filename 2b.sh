if [ $# -eq 1 ]
then
grep $1 /etc/passwd >>ud
if [ $? -eq 0 ]
then
echo "User exists"
h=`cut -d " " -f 6 ud`
echo "Home directory of $1 is $h"
else
echo "User Not found"
fi
else
echo "Enter valid user name"
fi 
