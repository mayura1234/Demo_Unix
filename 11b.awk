BEGIN{
   FS="|" 
   printf("SNO     EMPID      NAME       DESIGNATION     DOB     Basic     DA    HRA    Gross");
printf("\n____________________________________________________________________________________\n");
}
{
sno++
if($5<10000)
{
DA=0.45*$5
HRA=0.15*$5
Gross=$5+DA+HRA
}
else
{
DA=0.50*$5
HRA=0.20*$5
Gross=$5+DA+HRA
}
printf("\n%d\t%d\t%s\t%s\t%d\t%d\t%d\t%d\t%d\n",sno,$1,$2,$3,$4,$5,DA,HRA,Gross);
tbs+=$5
tda+=DA
thra+=HRA
tgrs+=Gross
}
END{
printf("\n ___________________________________________________________________________________\n");
printf("Total : Basic=%d\tDA=%d\tHRA=%d\tGross=%d\n",tbs,tda,thra,tgrs);
printf(" _____________________________________________________________________________________\n");
}

