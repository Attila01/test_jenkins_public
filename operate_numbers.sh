#!/bin/bash
echo "starting script 1"
# Function to perform additiont 1

function addition() {
  local sum=0
  for num in "$@"; do
    ((sum += num))
  done
  result=$sum
}

# Function to perform addition
function addition2() {
  result=$(($1 + $2))
}

# Function to perform subtraction
function subtraction() {
  result=$(($1 - $2))
}

# Function to perform multiplication
function multiplication() {
  result=$(($1 * $2))
}

# Function to perform division
function division() {
  if [ $2 -ne 0 ]; then
    result=$(($1 / $2))
  else
    result="Error: Division by zero is not allowed."
  fi
}
 
# Function to perform modulo
function modulo() {
  if [ $2 -ne 0 ]; then
    result=$(($1 % $2))
  else
    result="Error: Division by zero is not allowed."
  fi
}

# Main script starts here

echo "Please enter six numbers separated by spaces:"
# read num1 num2 num3 num4 num5 num6

addition2 $num1 $num6
echo "Addition of $num1 and $num6 is: $result"

addition2 $num3 $num4
echo "Addition of $num3 and $num4 is: $result"

subtraction $num3 $num4
echo "Subtraction of $num3 and $num4 is: $result"

multiplication $num5 $num6
echo "Multiplication of $num5 and $num6 is: $result"

division $num1 $num3
echo "Division of $num1 by $num3 is: $result"

modulo $num2 $num4
echo "Modulo of $num2 by $num4 is: $result"
# Main script starts here

echo "Please enter six numbers separated by spaces:"
echo $num1 $num2 $num3 $num4 $num5 $num6

addition $num1 $num2 $num3 $num4 $num5 $num6
echo "The sum of $num1, $num2, $num3, $num4, $num5, and $num6 is: $result"

