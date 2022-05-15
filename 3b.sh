<<comment
Write a shell script to implement terminal locking (Similar to the lock command). It should
prompt for the user for a password. After accepting the password entered by the user, it must
prompt again for the matching password as confirmation and if match occurs, it must lock the
keyword until a matching password is entered again by the user. Note the Script must be
written to disregard BREAK, control-D. No time limit need be implemented for the lock
duration.
comment

echo "Enter the Password For Terminal Locking"
stty -echo
read password
stty echo
echo "Enter the confirmation Password : "
stty -echo
read cpassword
stty echo
while [ "$password" != "$cpassword" ]
do
clear
echo "Password Does not Matches----!"
echo "Re-enter password , Until You enter Correct password terminal won't unlock! "
stty -echo
read cpassword
stty echo
done
clear 
echo "Terminal locked"
echo "________________"
echo "Enter Password to unlock"
stty -echo
read password3
stty echo
while [ "$password" != "$password3" ]
do
echo " "
echo "_______________________"
echo "Terminal locked"
echo "Password is incorrect"
echo "Enter the password correctly"
echo "_____________________________"
stty -echo
read password3
stty echo
done
echo " "
echo " Terminal Unlocked"
