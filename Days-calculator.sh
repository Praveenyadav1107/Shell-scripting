#!/bin/bash
# This line indicates that the script should be run using the Bash shell.

#
# Calculate number of days between 2 dates
# This comment explains the purpose of the script.

date1="Jul 11, 1995"
# This line sets the first date (date1) to July 11, 1995.

date2="Jul 11, 2024"
# This line sets the second date (date2) to July 11, 2024.

time1=$(date -d "$date1" +%s)
# This line converts date1 into seconds since the Unix epoch (January 1, 1970) 
# and stores it in the variable time1.

time2=$(date -d "$date2" +%s)
# This line converts date2 into seconds since the Unix epoch 
# and stores it in the variable time2.

diff=$(expr $time2 - $time1)
# This line calculates the difference in seconds between time2 and time1 
# and stores it in the variable diff.

seconds_in_days=$(expr 24 \* 60 \* 60)
# This line calculates the number of seconds in one day (24 hours * 60 minutes * 60 seconds) 
# and stores it in the variable seconds_in_days.

days=$(expr $diff / $seconds_in_days)
# This line calculates the total number of days by dividing the difference in seconds (diff) 
# by the number of seconds in a day (seconds_in_days) 
# and stores it in the variable days.

# Calculate years between 2 dates
# This comment indicates that we will now calculate the number of years between the two dates.

years=$(expr $days / 365)
# This line calculates the total number of years by dividing the total days by 365 
# (assuming a year has 365 days) and stores it in the variable years.

echo "Difference between $date2 and $date1 is : $days days"
# This line prints out the difference in days between date2 and date1.

echo "Total years difference between $date1 and $date2 is $years years"
# This line prints out the total difference in years between date1 and date2.