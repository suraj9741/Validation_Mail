#!/bin/bash -x
echo "Email Validation Program"
pattern="^([A-Za-z0-9]*[A-Za-z0-9]?)@(([A-Za-z0-9]+)*)+\.(com{1})+$"
echo "Enter Email"
read email
if [[ $email =~ $pattern ]]
then
	echo "Y"
else
	echo "N"
fi