<<comment 
Shell script that accepts a path name and creates all the components in that path name as directories. 
comment
 
if [ $# -ne 0 ]
then
p=`echo $1 | tr "/" " "`
for i in $p
do
mkdir $i
cd $i
done
echo "All directories are created"
else
echo "Enter a parameter"
fi
