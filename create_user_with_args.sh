#!/bin/bash

# Check if username is passed

if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi


USERNAME="$1"


# Securely read password
read -s -p "Enter password for $USERNAME: " PASSWORD
echo



# Create user

if id "$USERNAME" &>/dev/null; then

    echo "User '$USERNAME' already exists."
else
    sudo useradd -m "$USERNAME"
    echo "$USERNAME:$PASSWORD" | sudo chpasswd
    echo "User '$USERNAME' created successfully."
 
fi


sudo userdel $username


echo "================ Deletion of user Completed ================="


cat /etc/passwd | grep $username | wc


echo "as wc is 0 the user is deleted"

