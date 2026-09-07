#!/bin/bash 

function createuser {
read -p "enter the user name " username 
read -p "enter the password " password
echo "====== create user======"
sudo useradd "$username"

echo -e "$password\n$password" | sudo passwd "$username"

}
function userdel {
echo " user deleted"
sudo userdel $username
}

function usercheck {

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ] 
then
echo "as wc is 0 the wc is deleted" 
else 
	echo "the user was not deleted"
fi
}

createuser
userdel
usercheck

