#!/bin/bash


<<info

this shell script is an explanation of fuctions - loops work or repeated tasks so in devops there is concept known as DRY - do not repeat yourself
so it is a good practice you can create a function for that repate work or task
info


function create_user {

read -p "enter the username: " username 

sudo useradd -m $username 

echo "user created successfully"

}

create_user

