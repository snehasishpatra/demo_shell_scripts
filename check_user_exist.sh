#!/bin/bash

read -p "enter the name of user you wish to check" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1 is present}')
echo "$count"
if [ $count == 0 ];
then 
	echo "user dosent exist"
else
	echo "user exist"
fi


