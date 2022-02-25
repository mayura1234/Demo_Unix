<<comment
Shell script that gets executed and displays the message either "Good Morning" or "Good Afternoon" or "Good Evening" or "Good Night" depending upon the user logs in.
comment
t1=`date +%H`
if [ $t1 -ge 6 ] && [ $t1 -lt 12 ]
then
echo "Good Morning"
elif [ $t1 -ge 12 ] && [ $t1 -lt 16 ]
then 
echo "Good Afternoon"
elif [ $t1 -ge 16 ] && [ $t1 -lt 20 ]
then 
echo "Good Evening"
elif [ $t1 -ge 20 ] && [ $t1 -lt 24 ]
then
echo "Good Night"
fi   
