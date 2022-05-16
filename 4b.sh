<<comment 
 Write a shell script that displays all the links to a file specified as the first argument to the
script. The second argument, which is optional, can be used to specify in which the search is to
begin. If this second argument is not present, the search is to begin in the current working
directory. In either case, the starting directory as well as its subdirectories at all levels must be
searched. The script need not include error checking.
comment

if [ $# -ge 1 ]
 then
   if [ $# -eq 2 ]
    then 
      sear=$2
     else
      sear=$HOME
   fi
     file1=$1
     if [ -f $file1 ]
     then
      set -- ` ls -i $file1 `
      onlyi=$1
      echo "$onlyi"
      find $sear -inum $onlyi 
     else
      echo " You Don't have hardlink for this file OR File Does not Exists!"   
     fi
     else
    echo "Enter Parameter"
fi



