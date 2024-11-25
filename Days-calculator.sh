#!/bin/bash
# This line indicates that the script should be run using the Bash shell.

#
# Calculate number of days between 2 dates 
# This is a comment explaining what the script does.

date1="Jan 1, 2024"
# Here, we define the first date (date1) as January 1, 2024.

date2="Jul 11, 2024"
# Here, we define the second date (date2) as July 11, 2024.

time1=$(date -d "$date1" +%s)
# We convert date1 into seconds since the Unix epoch (January 1, 1970).
# The result is stored in the variable time1.

time2=$(date -d "$date2" +%s)
# We do the same for date2, converting it to seconds and storing it in time2.

diff=$(expr $time2 - $time1)

# We calculate the difference in seconds between time2 and time1.
# This gives us the total number of seconds between the two dates.

seconds_in_days=$(expr 24 \* 60 \* 60)

# We calculate how many seconds are in one day (24 hours * 60 minutes * 60 seconds).
# The result is stored in seconds_in_days.

days=$(expr $diff / $seconds_in_days)

# We divide the difference in seconds (diff) by the number of seconds in a day.
# This gives us the total number of days between the two dates and stores it in days.

echo "Difference between date 2 and date 1 is: $days days"

# Finally, we print out the result, showing how many days are between date1 and date2.