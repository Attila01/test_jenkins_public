#!/bin/bash

# Function to perform addition
function addition() {
  local sum=0
  for num in "$@"; do
    ((sum += num))
  done
  result=$sum
}

# Main script starts here

echo "Please enter six numbers separated by spaces:"
read num1 num2 num3 num4 num5 num6

addition $num1 $num2 $num3 $num4 $num5 $num6
echo "The sum of $num1, $num2, $num3, $num4, $num5, and $num6 is: $result"
