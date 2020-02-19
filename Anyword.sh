#!/bin/bash -x

echo "User Registration RegEx!!"
 
#Checking for the firstname Starting with capital letter and having min length 3
function firstNameRegEx()
{
	echo "Enter firstname to check for the regex:"
	read firstname

	regEx=^[A-Z]
	size=${#firstname}
	if [ $size -gt 2 ]
	then
		if [[ $firstname =~ $regEx ]]
		then
      	echo "Valid firstname!!"
		else
      	echo "Please enter firstname start with Capital letter!!"
		fi
	else
		echo "Enter the FirstName having length greater than 2!!"
	fi
}

#Checking for the lastname Starting with capital letter and having min length 3
function lastNameRegEx()
{
	echo "Enter lastname to check for the regex:"
	read lastname

	regEx=^[A-Z]
	size=${#lastname}
	if [ $size -gt 2 ]
	then
		if [[ $lastname =~ $regEx ]]
		then
			echo "Valid lastname!!"
		else
			echo "Please enter lastname start with Capital letter!!"
		fi
	else
		echo "Enter the lastname having length greater than 2!!"
	fi
}

#Calling function
firstNameRegEx
lastNameRegEx
