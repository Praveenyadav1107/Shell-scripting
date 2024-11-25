#!/bin/bash  # This line tells the system to use the Bash shell to run this script.
#
# This Script is to perform arithmetic operation [a * (b - c)]  # A comment explaining what the script does.

a=100  # Here, we set the variable 'a' to 100.
b=25   # We set the variable 'b' to 25.
c=5    # We set the variable 'c' to 5.
d=$[$a * ($b - $c)]  # We calculate (b - c), multiply it by a, and store the result in 'd'.
echo "The output of [a * (b - c)] is : $d "  # This line prints the result stored in 'd'.

# Floating point solution: "scale" is used to denote how many digits to show after the decimal point, and "bc" is a calculator for bash.

floating_point=$(echo "scale=3; 25.3362445/5" | bc)  # We divide 25.3362445 by 5 using 'bc' and set 'scale' to 3 for three decimal places.

echo "The result of 25.3362445/5 is: $floating_point "  # This line prints the floating-point result.