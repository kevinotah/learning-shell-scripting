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


# using read -p: automatically assigns the input to the variable without using echo
# kinda like " variable = input("Enter info: ") " in python
echo
read -p "Enter username: " username
printf "Welcome $username!\n"

# using read -s: makes the input invisible
echo
read -sp "Enter hidden message: " hidden
echo
printf "\nI KNOW YOUR SECRET! IT IS: \n"
echo
for ((i=3; i>0; i--))
do
    sleep 1 && echo $i
done
sleep 1 && echo
echo "$hidden"
