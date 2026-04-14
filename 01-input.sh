#! /usr/bin/bash

# using read
echo
echo "Enter name: "
read name

echo "Confirm that your name is $name [y/n]: "
read response

if [ "$response" = "y" ]; then
	echo "Confirmation succesful!"
else
	echo "Astaghfirullah brudda"
fi

echo && sleep 2

echo "Multiple names this time"
echo "Enter names: "
read names
namearray=($names)

printf "\nHere are your names:\n"
for ((i=0; i<${#namearray[@]}; i++))
do
    echo "Name $((i+1)) = ${namearray[$i]}"
done


# using read -p
echo
read -p "Enter username: " username
printf "Welcome $username!\n"
