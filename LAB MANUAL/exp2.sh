#!/bin/bash

# Reading the text from stdin and assigning it to the variable named "myName"

read myName

# Substitute the variable and print the text

echo "Hello ${myName}"

echo "any error text can be here" >&2
