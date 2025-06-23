#!/bin/bash


hero="rancho"
villain="virus"

echo "3 idiots ka hero hai $hero"

echo " 3 idiots ka villain hai $villain"

# shell/ environment variables 

echo "current logged in user" $USER

# user input 
read -p "rancho ka pora nam kya tha?" fullname


echo "rancho ka pora nam $fullname tha"

#argument


# ./3_idiots.sh raju farhan rancho

#it is also argument 

echo "movie ka naam: $0"

echo "first idiot: $1"

echo "second idiot: $2"

echo "third idiot: $3"

echo "the total number of iditos: $#"

echo "hence the 3 idiots are $@"


