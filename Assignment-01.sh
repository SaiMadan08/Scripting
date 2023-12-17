#!/bin/bash

INPUT=data.txt

awk '{print $1}' data.txt | paste -sd ' ' -
awk '{print $2}' data.txt | paste -sd ' ' - 
"$INPUT"