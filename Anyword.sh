#!/bin/bash -x

echo "User Registration RegEx!!"

echo "Enter a word to check for the regex:"
read word

#Checking for the firstname Starting with capital letter and having min length 3
function firstNameRegEx()
{
	firstname=$1
	regEx=^[A-Z]
	size=${#firstname}
	if [ $size -gt 2 ]
	then
		if [[ $firstname =~ $regEx ]]
		then
      	echo "Valid word!!"
		else
      	echo "Please enter Word start with Capital letter!!"
		fi
	else
			echo "Enter the FirstName having length greater than 2!!"
	fi
}

#Calling function
firstNameRegEx $word
