#!/bin/bash -x

echo "User Registration RegEx!!"
 
#Checking for the firstname Starting with capital letter and having min length 3
function firstNameRegEx()
{
	echo "Enter firstname to check for the regex:"
	read firstname

	regEx="[A-Z][a-zA-Z]{2,}"
	if [[ $firstname =~ $regEx ]]
	then
      echo "Valid firstname!!"
	else
      echo "Please enter firstname start with Capital letter and having min length 3!!"
	fi
}

#Checking for the lastname Starting with capital letter and having min length 3
function lastNameRegEx()
{
	echo "Enter lastname to check for the regex:"
	read lastname

	regEx="[A-Z][a-zA-Z]{2,}"

	if [[ $lastname =~ $regEx ]]
	then
		echo "Valid lastname!!"
	else
		echo "Please enter lastname start with Capital letter and having min length 3!!"
	fi
}

#Checking for the E.g. abc.xyz@bl.co.in - Email has 3 mandatory parts (abc, bl
#& co) and 2 optional (xyz & in) with precise @ and . positions
function emailRegEx()
{
	echo "Enter Email to check for the regex:"
	read email

	regEx="[0-9a-zA-Z]+[._+-]{0,1}[0-9a-zA-Z]+[@][0-9a-zA-Z]+[.][a-zA-Z]{2,3}([.][a-z]{2}){0,1}$"
	if [[ $email =~ $regEx ]]
	then
		echo "Valid Email!!"
	else
		echo "Please enter valid email id!!"
	fi
}

#As a User need to follow predefined
#Mobile Format - E.g. 91 9919819801 - Country code follow by space
function mobileRegEx()
{
	echo "Enter mobile number to check for the regex:"
	read mobileNo

	regEx="^[0-9]{2}[ ][0-9]{10}$"
	if [[ $mobileNo =~ $regEx ]]
	then
		echo "Valid Mobile number!!"
	else
		echo "Enter the valid 10 digit mobile number!!"
	fi
}

#As a User need to follow predefined Password rules.
#Rule1 Minimum 8 Characters
#Rule2 Must start with capital letter
#Rule3 Should have atleast one Numeric number
function passwordRegEx()
{
	echo "Enter the password to Validate:"
	read password

	regEx="^[A-Z][a-z0-9]{7,}$"
	if [[ $password =~ $regEx ]]
	then
		echo "Valid password!!"
	else
		echo "Enter password with min length 8 and Starting with Capital letter and should contain atleast one digit"
	fi
}

#Calling function
#firstNameRegEx
#lastNameRegEx
#emailRegEx
#mobileRegEx
passwordRegEx
