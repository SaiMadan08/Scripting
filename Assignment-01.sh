#!/bin/bash

INPUT=data.txt

awk -F',' '
{
    for (i=1; i<=NF; i++) {
        if (NR == 1) {
            data[i] = $i
        } else {
            data[i] = data[i] " " $i
        }
    }
}
END {
    for (i=1; i<=NF; i++) {
        print data[i]
    }
}' "$INPUT"