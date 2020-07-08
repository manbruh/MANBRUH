#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

printf "Enter first number:"
read -r firstnum
# user input first number
printf "Enter second number:"
read secondnum
# user input second number
printf "Enter third number:"
read thirdnum
# user inpur third number

sum=$(($firstnum + $secondnum + $thirdnum))
# calculating sum
product=$(($firstnum * $secondnum * $thirdnum))
# calculating product

cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
product of $firstnum,$secondnum and $thirdnum is $product

EOF
