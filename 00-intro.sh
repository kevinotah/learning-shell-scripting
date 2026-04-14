#! /usr/bin/bash

echo "Hello World!"

array=(PROGRAMMING IS FUN)

echo 
for word in "${array[@]}"; do echo $word; done
echo

# comments
# this is a comment
echo "What is love? Baby don't hurt me." # this is also a comment
echo

# (some) system variables
echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD
echo

# user variables
name=Kevin age=24 country=Nigeria
echo "My name is $name"
printf "My name is $name, I'm $age years old and I come from $country.\n"
echo

