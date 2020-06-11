#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

echo "Enter first number:"
#echo command is used to print statement as it is in terminal
read firstnum
# read command accepts user input
# user input first number
echo "Enter second number:"
#echo command is used to print statement as it is in terminal
read secondnum
# read command accepts user input
# user input second number
echo "Enter third number:"
#echo command is used to print statement as it is in terminal
read thirdnum
# read command accepts user input
# user inpur third number

sum=$(($firstnum + $secondnum + $thirdnum))
# calculating sum
product=$(($firstnum * $secondnum * $thirdnum))
# calculating product

cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
product of $firstnum,$secondnum and $thirdnum is $product

EOF
