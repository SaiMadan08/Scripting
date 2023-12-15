#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1 + $NUMBER2))
SUB=$(($NUMBER1 - $NUMBER2))
MUL=$(($NUMBER1 * $NUMBER2))

echo "Sum is : $SUM
      Sub is : $SUB
      MUL is : $MUL"
echo "How many args passed : $#"

echo "All args passed : $@"

echo "Script name : $0"
