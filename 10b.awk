BEGIN{
print("No repeated lines:")
}

{
arr[++i]=$0
++line
}

END{
for(i=1;i<=line;i++)
{
counter=0
for(j=1;j<=line;j++)
{
if(i==j && counter==0)
{
	counter=1
	printf("%d %s\n",i,arr[i]);
}
else if (arr[i]==arr[j])
	break;
}	
}
}
