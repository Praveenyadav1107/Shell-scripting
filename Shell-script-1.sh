#!/bin/bash
# This line indicates that the script should be run using the Bash shell.

#Testing Environment variable

echo  "Display user info: $USER"
# This command prints the current user's name by accessing the USER environment variable.

echo  "Display userid: $UID"
# This command prints the current user's ID number by accessing the UID environment variable.

echo  "User home directory: $HOME"
# This command prints the path to the current user's home directory by accessing the HOME environment variable.


#Testing user variables

days=10
# Here, we create a variable named 'days' and set its value to 10.

guest=yadav
# We create another variable named 'guest' and set its value to 'yadav'.

echo "$guest checked out of hotel in $days"
# This command prints a message indicating that 'yadav' checked out of the hotel after 10 days.

days=5
# We update the 'days' variable to have a new value of 5.

guest=praveen
# We update the 'guest' variable to have a new value of 'praveen'.

echo "$guest checked out of hotel in $days"
# This command prints a message indicating that 'praveen' checked out of the hotel after 5 days.


#System details

echo -n "Current date and time :"
# This command prints "Current date and time :" without moving to a new line.

date
# This command displays the current date and time.

#Command substitution

test=$(who)
# This line runs the 'who' command (which shows who is logged in) and stores its output in a variable named 'test'.

echo -n " Who logged to the system :" $test
# This command prints "Who logged to the system :" followed by the list of users currently logged in, without moving to a new line.