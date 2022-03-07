<<comment
Shell script that gets executed and displays the message either "Good Morning" or "Good Afternoon" or "Good Evening" or "Good Night" depending upon the user logs in.
comment
set -- `who`
user=$1
set -- `echo $4 | tr ":" " "`
t1=`date +%H`
if [ $t1 -ge 6 ] && [ $t1 -lt 12 ]
then
echo "Good Morning $user"
elif [ $t1 -ge 12 ] && [ $t1 -lt 16 ]
then 
echo "Good Afternoon $user"
elif [ $t1 -ge 16 ] && [ $t1 -lt 20 ]
then 
echo "Good Evening $user"
elif [ $t1 -ge 20 ] && [ $t1 -lt 24 ]
then
echo "Good Night $user"
fi   
