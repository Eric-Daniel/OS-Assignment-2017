#!/bin/bash
SUCCESS=0
username=$1
grep -q "$username" /etc/passwd
echo "Do you want to delete user $username and the directories inside the home/$username "
echo "Press Y to continue or N to abort"
	read input
	
if [[ $input == 'Y' || $input == 'y' ]]
	then
	if [ $? -eq $SUCCESS ] 
		then	  
			if [ $? -eq 0 ] 
				then
				userdel $username
				rm -r /home/$username
				echo "Successfully deleted the $username and the directories inside"
			else
				echo "fail"
			fi
	else 
	echo "The $username does not exists"
	fi
else 
exit 0
fi

