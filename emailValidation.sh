##!/bin/bash -x
echo "Email Validation Program"
#pattern="^([A-Za-z0-9]*[A-Za-z0-9]?)@(([A-Za-z0-9]+)*)+\.(com{1})+$"
pattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[0-9a-zA-Z]{2,4}([.]*[a-zA-Z]{0,3})$"
#echo "Enter Email"
#read email
valid_input=(
"abc@yahoo.com"
"abc-100@yahoo.com"
"abc.100@yahoo.com"
"abc111@abc.com"
"abc-100@abc.net"
"abc.100@abc.com.au"
"abc@1.com"
"abc@gmail.com.com"
"abc+100@gmail.com"
)

invalid_input=(
"abc"
"abc@.com.my"
"abc123@.com"
"abc123@.com.com"
".abc@abc.com"
"abc()*@gmail.com"
"abc@%*.com"
"abc..2002@gmail.com"
"abc.@gmail.com"
"abc@abc@gmail.com"
"abc@gmail.com.1a"
"abc@gmail.com.aa.au"
)
check()
{
	if [[ $1 =~ $pattern ]]
	then
		#echo $1
		echo "Valid Email"
	else
		#echo $1
		echo "Invalid Email"
	fi
}
echo "-------------------valid email check-------------------"
for i in ${valid_input[@]}
do
	check $i
done 
echo "-------------------invalid email check-------------------"
for i in ${invalid_input[@]}
do
	check $i
done