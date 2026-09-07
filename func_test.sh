#!/bin/bash 


function create_user {
read -p "enter the user name " username 
sudo useradd -m $username
echo "user created sucessfully"
}
for ((i==1 ; i<3 ; i++))
 do 

	 create_user
 done

