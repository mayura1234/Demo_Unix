<<comment
Shell script that accept one or more filenames as arguments and convert all of them to uppercase , provided they exists in current directory
comment

for i in $*
do
if [ -f $i ]
then
echo "$i contents are"
echo "______________________"
cat $i | tr "[a-z]" "[A-Z]"
echo "______________________"
else
echo "$i file does not exists"
fi
done

