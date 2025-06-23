#!/bin/bash


<<help


(mutiline - or short intro of shell script that what it does or )

this is a small shell sccript 
to create user 

help


echo " ======= creation of user started ============"

read -p "enter the username: " username 

read -p "enter the password: " password 

sudo useradd -m "$username"

sudo passwd "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "========= creation of user completed ============="


sudo userdel $username

echo "============= Deletion of user completed =============="

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then


     echo "as wc is 0 the user is deleted"

else
	echo "the user was not deleted"

fi
