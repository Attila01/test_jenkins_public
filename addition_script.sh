#!/bin/bash

# Function to perform addition
function addition() {
  result=$(($1 + $2))
}

# Main script starts here

echo "Please enter two numbers separated by a space:"
# read num1 num2
# read num1 num23

addition $num1 $num2
echo "The sum of $num1 and $num2 is: $result"
