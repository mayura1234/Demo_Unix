<<comment 
Shell script that accepts 2 filenames as argumrnts, check if the permissions for these files are identical and if the permissions are identical , output common permissions otherwise output each file name followed by its permissions
comment

echo "Enter the first filename"
read f1
if [ -e $f1 ]
then
set -- `ls -l $f1`
fileper=$1
else
echo "Enter a valid file name"
exit
fi
echo "Enter the second filename"
read f2
if [ -e $f2 ]
then
set -- `ls -l $f2`
fileper2=$1
else
echo "Enter a valid file name"
exit
fi
if [ $fileper = $fileper2 ]
then
echo "File Permissions are identical"
echo "Both having $fileper Permission"
else
echo "File permissions are not identical"
echo "Permission of First file is $fileper"
echo "Permission of Second file is $fileper2"
fi
