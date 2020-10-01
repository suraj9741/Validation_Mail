#!/bin/bash -x
echo "Email Validation Program"
#pattern="^([A-Za-z0-9]*[A-Za-z0-9]?)@(([A-Za-z0-9]+)*)+\.(com{1})+$"
pattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.]*[a-zA-Z]{0,2})$"
echo "Enter Email"
read email
if [[ $email =~ $pattern ]]
then
	echo "Valid Email"
else
	echo "Invalid Email"
fi