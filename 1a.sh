if [ $# -eq 1 ]
then
if [ -d $1 ]
then
echo "Directory Exists"
ls -Rl | grep "^-" | tr -s " " | cut -d " " -f 5 | sort -n | tail -1
else
echo "Directory Doesn't Exists"
fi
else
echo "Enter directory Name"
fi
