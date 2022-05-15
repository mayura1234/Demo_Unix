<<comment
 Write s a shell script to find a file/s that matches a pattern given as command line argument
in the home directory, display the contents of the file and copy the file into the directory
~/mydir.
comment

if [ $# -gt 0 ]
then
if [ -e $* ]
then
if [ -f $* ]
then
for i in $*
do
dir=/home/mayura/mydir
if [ -e $dir ]
then
ls $*
cat $*
cp $* $dir
else
echo "No Directory found in the name -mydir "
fi
done
else
echo " It if not a file"
fi
else
echo "File does not exists"
fi
else
echo "Please Enter a Parameter"
fi

