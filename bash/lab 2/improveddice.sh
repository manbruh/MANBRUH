#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

# Tell the user we have started processing

echo "Enter number of sides:"
#echo command is used to print statement as it is in terminal
read sides
# read command accepts user input
echo "Enter minimum value as range for rolling:"
#echo command is used to print statement as it is in terminal
read min
# read command accepts user input

echo "Rolling..."
#echo command is used to print statement as it is in terminal
# roll the dice and save the results
die1=$(( RANDOM % $sides + $min ))
# $sides represents number of option and $min represents minimum value on dice
die2=$(( RANDOM % $sides + $min ))

sum=$(($die1 + $die2))
# generating sum of two rolled options namely stored as die1 and die2
echo "The sum is: $sum"
#echo command is used to print statement as it is in terminal
avg=$(($sum / 2))
# average of two number is sum/2. so dividing and displaying average of two rolled option.
echo "The average is: $avg"
#echo command is used to print statement as it is in terminal
echo "Rolled $die1, $die2"
#echo command is used to print statement as it is in terminal
